SELECT * FROM bikkad_it18.emp;
# Using CTE
with High_salary as (
	select * from emp 
    where salary > 60000
)

select * from High_salary;

# Using Subquery
select * from emp
where salary > (
	select avg(salary) from emp
);

select 
	employee_name,
    department,
    salary,
    city,
    rank() over(partition by department order by salary desc) as salary_rank
    from emp;
    
select * from (
	select
    employee_name,
    department,
    salary,
    dense_rank() over(order by salary desc) as second_higest_salary
    from emp
) s
where second_higest_salary = 2;

select * from emp
order by salary desc;

# find third highest salary

select * from(
	select
	employee_name,
    department,
    salary,
    dense_rank() over(order by salary desc) as highest_salary
    from emp
)t
where highest_salary = 3;

# find max salary in each department

select department ,  max(salary) as Highest_salary
from emp 
group by department;


delimiter //
create procedure get_it_employee()
begin 
	select * from emp 
    where department = 'IT';
end //
delimiter ;
call get_it_employee();

# Find second highest salary using subquery

select max(salary) as max_salary
from emp
where salary<(
	select max(salary) from emp
);

# Find employee earning more than average salary

select employee_name , salary 
from emp
where salary >(
	select avg(salary) from emp
);
select * from emp;

# find max salary in each deaprtment 
select department , max(salary) as highestSalary
from emp 
group by department;

# find the second highest salary in each department

select * from (
	select 
    employee_name,
    department,
    salary,
    row_number() over(partition by department order by salary desc) as rnk
    from emp
)t
 where rnk = 2;












    