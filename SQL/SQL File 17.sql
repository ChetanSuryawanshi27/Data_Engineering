use bikkad_it18;

select * from employee_details;

select * from employee_details where department = 'IT';

select * from employee_details where salary > 80000;

select * from employee_details where city = 'Delhi';

select * from employee_details where gender = 'Female';

select * from employee_details 
where salary between 60000 and 80000;

select * from employee_details 
where first_name like 'a%';

select * from employee_details 
where first_name like '_a%';

select * from employee_details 
where last_name like '%a_';

# Employees hired after 2020

select * from employee_details
 where hire_date > '2020-12-31';
 
 select * from employee_details
 where department <> 'HR';
 
 select * from employee_details
 where department != 'HR';
 
 # Employees from IT in Delhi with salary > 85,000
 
 select * from employee_details where
 department = 'IT' and city = 'Delhi' and salary > 85000;
 
 # Employees whose name ends with 'a' and are female
 
 select * from employee_details where 
 gender = 'Female' and first_name like '%a';
 
# Show employees sorted by salary (high → low)

select * from employee_details 
order by salary desc;

select * from employee_details
order by salary asc;

select * from employee_details
order by hire_date desc;

select * from employee_details
order by hire_date asc;

select * from employee_details 
order by department asc , salary desc;

select count(*) from employee_details;

select avg(salary) from employee_details; 

select sum(salary) from employee_details;

select min(salary) from employee_details;

select max(salary) from employee_details;

select sum(salary) as Total_sum_Salary
from employee_details
where department = 'IT';

# Total salary of HR department.
select sum(salary) as Total_salary
from employee_details
where department = 'HR';

# Average salary of Finance employees
select avg(salary) as total_avg
from employee_details
where department = 'Finance';

# Minimum salary in HR
select min(salary) as total_min
from employee_details
where department = "HR";

select department , count(*) as employee_count
from employee_details
group by department;

select department , avg(salary) as employee_salary
from employee_details
group by department;

select city , count(*) as employee_city_total
from employee_details
group by city;

select city , sum(salary) as total_sum_salary
from employee_details
group by city;

# Departments having average salary > 70,000

SELECT department, AVG(salary) AS avg_salary
FROM employee_details
GROUP BY department
HAVING AVG(salary) > 70000;

# Cities where employee count > 3

select city , count(*) as city_count
from employee_details
group by city
having count(*) >3;