select * from employee_details;

select *
from(
select salary,
		dense_rank() over (order by salary desc) as rnk
	from employee_details
) t
where rnk =2;

select *
from( select
	emp_id,
    first_name,
    last_name,
    salary,
    dense_rank() over(order by salary desc) as rnk
from employee_details
) t 
where rnk = 2;

# 1. Find the second-highest salary

select * 
from (
	select 
		emp_id,
        first_name,
        last_name,
			dense_rank() over (order by salary desc ) as second_highest_salary
from employee_details
) t
where second_highest_salary = 2 ;


# 2. Find employees earning more than the average salary

select * from employee_details
where salary > (select avg(salary) from employee_details);

select avg(salary) from employee_details;

select * from employee_details
where salary >(
	select avg(salary) from employee_details
);

# 3. Find duplicate records

select first_name, salary, count(*) as duplicates
from employee_details
group by first_name , salary
having count(*) > 1;

select first_name , salary, count(*) as total_duplicates
from employee_details
group by first_name , salary
having count(*) > 1;

# 4. Find employees who don't have a department

SELECT e.employee_id,
       e.name,
       e.department_id
FROM employees e
LEFT JOIN departments d
    ON e.department_id = d.department_id
WHERE d.department_id IS NULL;

# 5. Find the highest salary in each department

select department_id,
	max(salary) as higest_salary
from employees
group by department_id;

# 6. Find the top 3 highest-paid employees in each department

select * 
from (
	select
		employee_id,
        name,
        department_id,
        salary,
        row_number() over(partition by department_id order by salary desc) as rn
        from employees
) rn 
where rn <= 3;


select department_id,
max(salary) as highest_salary
from employees
group by department_id; 




	










