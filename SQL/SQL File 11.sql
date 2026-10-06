select * from employees;

select * from employees
where salary >(
	select avg(salary)
    from employees
);

select * from employees
where salary < (
	select avg(salary) 
    from employees
);

select max(salary) as second_highest_salary
from employees
where salary < (
	select max(salary)
    from employees
);

select max(salary) as third_salary
from employees
where salary < (
	select max(salary)
    from employees
	where salary < (
		select max(salary)
        from employees
    )
);

select * from employees
where salary = (
	select max(salary)
    from employees
		where salary < (
			select max(salary)
			from employees
        )
);
select * from employees
where salary = (
	select max(salary)
    from employees
);

-- Find employees earning more than the average salary of their department.

select * from employees e
where salary > (
	select avg(salary)
    from employees
    where department = e.department
);

select department from employees
group by department
having avg(salary) > (
	select avg(salary)
    from employees
);

-- Assign a row number to every employee based on salary.
select 
	emp_id,
    salary,
    row_number() over (order by salary desc) as salary_based
    from employees;
    
select 
	emp_id,
    salary,
    rank() over (order by salary desc) as salary_based
    from employees;
    
select emp_id , salary
from (
	select
		emp_id,
        salary,
        dense_rank() over(order by salary desc) as salary_rank
        from employees
)as ranked_employees
where salary_rank <=3;

-- Find the top 3 highest-paid employees in each department.
select first_name, last_name,  salary , department
from(
	select
		first_name,
        last_name,
        salary,
        department,
        dense_rank() over(partition by department order by salary desc) as salary_rank
        from employees
) as employee_rank
where salary_rank <=3;


select first_name, salary ,department
from (
select
	first_name,
    salary,
    department,
    dense_rank() over(partition by department order by salary desc) as rank_salary
    from employees
) as employee_rank
where rank_salary = 2;

select first_name , salary , department
from (
	select
		first_name,
        salary,
        department,
        dense_rank() over(partition by department order by salary desc) as salary_rank
        from employees
) as employee_rank
where salary_rank =3;

select first_name , salary , department
from (
	select
		first_name,
        salary,
        department,
        row_number() over(partition by department order by salary desc) as rn
        from employees 
) as employee_rank
where rn = 1;


select first_name , salary , department
from (
	select
		first_name,
        salary,
        department,
        rank() over( order by salary desc) as salary_rank,
        count(*) over(partition by salary) as salary_count
        from employees  
) as e
where salary_count > 1;

























