
CREATE TABLE sales (
    sale_id INT,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    product VARCHAR(50),
    amount INT,
    sale_date DATE
);

INSERT INTO sales VALUES
(1, 'Amit',   'Pune',   'Laptop', 50000, '2026-01-05'),
(2, 'Rahul',  'Mumbai', 'Mobile',  20000, '2026-01-10'),
(3, 'Sneha',  'Pune',   'Laptop', 60000, '2026-01-15'),
(4, 'Priya',  'Delhi',  'Tablet',  30000, '2026-01-20'),
(5, 'Amit',   'Pune',   'Mobile',  25000, '2026-02-05'),
(6, 'Rahul',  'Mumbai', 'Laptop', 55000, '2026-02-10'),
(7, 'Sneha',  'Pune',   'Mobile',  30000, '2026-02-15'),
(8, 'Priya',  'Delhi',  'Laptop', 70000, '2026-02-20'),
(9, 'Amit',   'Pune',   'Tablet',  35000, '2026-03-05'),
(10,'Rahul',  'Mumbai', 'Mobile',  22000, '2026-03-10');

describe Sales;

select * from sales;

# 1. ROW_NUMBER()

# 1. Give a unique row number to every sale based on amount

select 
sale_id,
customer_name,
amount,
row_number() over (order by amount desc) as row_num
from sales;

#ROW_NUMBER() creates a sequential number.
#OVER() tells SQL that this is a window function.
#ORDER BY amount DESC sorts the highest amount first.
#The highest amount gets 1.
#Every row gets a different number.

# 2.RANK()

# 2. Rank sales based on amount

select
sale_id,
customer_name,
amount,
rank() over (order by amount desc) as sales_rank
from sales;

/* 
RANK() assigns a ranking.
ORDER BY amount DESC puts the highest amount first.
If two amounts are equal, they receive the same rank.
Ranking can have gaps after duplicates.
*/

# 3. DENSE_RANK()

# 3. Rank sales without gaps

select
sale_id,
customer_name,
amount,
dense_rank() over (order by amount desc) as sales_dense_rank
from sales;

/*
DENSE_RANK() ranks the rows.
Equal amounts get the same rank.
Unlike RANK(), it does not skip numbers
*/

#4. Compare ROW_NUMBER, RANK and DENSE_RANK

select
sale_id,
customer_name,
amount,
row_number() over (order by amount desc) as row_num,
rank() over (order by amount desc) as rank_num,
dense_rank() over (order by amount desc) dense_rank_num
from sales;

# 5. Partition data by city

select
sale_id,
customer_name,
city,
amount,
rank() over (partition by city order by amount desc) as city_rank
from sales;

/*
PARTITION BY city divides the data into groups
Then RANK() starts again inside each city.
*/

# 6. Top sale from each city

select *
from (
     select
     sale_id,
     customer_name,
     city,
     amount,
     
     row_number() over (partition by city order by amount desc) as rn
     from sales
) t
where rn = 1;  # keeps only the highest sale from each city

# 7. Top 2 sales from each city

select *
from(
	select
		sale_id,
        customer_name,
        city,
        amount,
        
        row_number() over (partition by city order by amount desc) as rn
        from sales
)t
where rn <=2;

/*
Divide rows by city.
Sort each city by amount.
Assign row numbers.
Keep rows where rn <= 2
*/

# 8. SUM() OVER()

# 8 . Calculate total sales without grouping rows.

select 
	sale_id,
    customer_name,
    amount,
    
    sum(amount) over() as total_sales
    
from sales;

# 9. Total sales by city using window function

select
	sale_id,
    customer_name,
    city,
    amount,
    
    sum(amount) over (partition by city) as total_city_sales
    from sales;
    
# 10. Average sales using AVG() OVER()

select 
	sale_id,
    customer_name,
    amount,
    
    avg(amount) over (partition by city) as city_avg_sales
    from sales;
    
/*
PARTITION BY city creates city groups.
AVG(amount) calculates average amount.
Each row displays the average of its city
*/

# 11. Find sales above city average

select *
from(
	select
	sale_id,
    customer_name,
    city,
    amount,
	avg(amount) over(partition by city) as city_avg
    from sales
)t
where amount > city_avg;

# 12. Running total

# 12. Calculate cumulative sales according to sale date

select
	sale_id,
    sale_date,
    amount,
    sum(amount) over (order by sale_date) as running_total
from sales;

# 13. Running total for each customer

select
	sale_id,
    customer_name,
    sale_date,
    amount,
    sum(amount) over(partition by customer_name order by sale_date) as customer_running_total
from sales;

# 14. LAG()

# 14. Show the previous sale amount

select 
	sale_id,
    sale_date,           #LAG() looks at the previous row
    amount,             #The first row has no previous row, so it gets NULL.
    lag(amount) over(order by sale_date) as previous_amount  
from sales;

# 15. LEAD()  
# 15. Show the next sale amount

select
	sale_id,
    sale_date,
    amount,
    lead(amount) over (order by sale_date) as next_amount
from sales;  # LEAD() looks at the next row

# 16. Compare current sale with previous sale

select
	sale_id,
    sale_date,
    amount,
    lag(amount) over(order by sale_date) as previous_amount,
    
    amount - 
    lag(amount) over(order by sale_date) as differnce
from sales;

# 17. FIRST_VALUE()
# 17. Show the first sale amount

select
	sale_id,
    sale_date,
    amount,
    first_value(amount) over(order by sale_date) as first_sale
from sales;

# 18. LAST_VALUE()
# 18. Show the last sale amount

select
	sale_id,
    customer_name,
    sale_date,
    amount,
    last_value(amount) 
    over(order by sale_date
	rows between unbounded preceding
    and unbounded following
	) as last_sale
from sales;
/*
ROWS BETWEEN UNBOUNDED PRECEDING
AND UNBOUNDED FOLLOWING

It tells MySQL to consider the entire window
Without this, LAST_VALUE() can give unexpected results because of the default window frame
*/

#19. Percentage of total sales

# 19. Find what percentage each sale contributes to total sales.

select
	sale_id,
    customer_name,
    amount,
    round(
		amount * 100.0 / sum(amount) over (), 2 #ROUND(..., 2) keeps two decimal places
	   ) as percentage_of_total
       
from sales;  

# 20. Find the top 3 customers by total sales

select *
from (
    select
        customer_name,
        sum(amount) as  total_sales,

        rank() over (
            order by sum(amount)  desc
        ) as customer_rank
    from sales
    group by customer_name
) t
where customer_rank <= 3;






