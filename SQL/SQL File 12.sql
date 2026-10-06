CREATE DATABASE mysql_practice;
USE mysql_practice;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE,
    city VARCHAR(50)
);

INSERT INTO employees
(emp_id, first_name, last_name, gender, department, salary, hire_date, city)
VALUES
(1, 'Rahul', 'Sharma', 'Male', 'IT', 65000, '2022-01-15', 'Pune'),
(2, 'Priya', 'Patil', 'Female', 'HR', 48000, '2021-03-20', 'Mumbai'),
(3, 'Amit', 'Verma', 'Male', 'Finance', 72000, '2020-07-10', 'Delhi'),
(4, 'Sneha', 'Joshi', 'Female', 'IT', 58000, '2023-02-18', 'Pune'),
(5, 'Rohit', 'Deshmukh', 'Male', 'Sales', 45000, '2022-06-25', 'Nashik'),
(6, 'Anjali', 'Shinde', 'Female', 'HR', 52000, '2023-08-12', 'Mumbai'),
(7, 'Akash', 'Kulkarni', 'Male', 'IT', 85000, '2019-11-05', 'Pune'),
(8, 'Neha', 'Gupta', 'Female', 'Finance', 68000, '2021-09-15', 'Delhi'),
(9, 'Raj', 'Mehta', 'Male', 'Sales', 55000, '2022-12-01', 'Mumbai'),
(10, 'Pooja', 'Pawar', 'Female', 'IT', 62000, '2024-01-10', 'Pune'),

(11, 'Arjun', 'Rane', 'Male', 'Finance', 78000, '2020-04-22', 'Mumbai'),
(12, 'Kavita', 'More', 'Female', 'HR', 47000, '2021-06-18', 'Nashik'),
(13, 'Aditya', 'Kale', 'Male', 'IT', 91000, '2018-03-12', 'Pune'),
(14, 'Snehal', 'Jadhav', 'Female', 'Sales', 51000, '2023-05-20', 'Aurangabad'),
(15, 'Vikas', 'Chavan', 'Male', 'Finance', 60000, '2022-10-11', 'Pune'),
(16, 'Aarti', 'Suryawanshi', 'Female', 'IT', 75000, '2020-12-05', 'Mumbai'),
(17, 'Abhishek', 'Yadav', 'Male', 'Sales', 49000, '2024-02-14', 'Delhi'),
(18, 'Meena', 'Shah', 'Female', 'HR', 56000, '2019-08-19', 'Pune'),
(19, 'Karan', 'Singh', 'Male', 'IT', 83000, '2021-01-25', 'Delhi'),
(20, 'Riya', 'Nair', 'Female', 'Finance', 71000, '2023-11-30', 'Mumbai'),

(21, 'Sanjay', 'Mishra', 'Male', 'Sales', 43000, '2020-02-15', 'Nashik'),
(22, 'Komal', 'Thakur', 'Female', 'HR', 50000, '2022-07-08', 'Pune'),
(23, 'Aryan', 'Patel', 'Male', 'IT', 67000, '2023-03-17', 'Mumbai'),
(24, 'Swati', 'Bhosale', 'Female', 'Finance', 59000, '2021-05-10', 'Pune'),
(25, 'Manish', 'Gupta', 'Male', 'Sales', 63000, '2019-10-21', 'Delhi'),
(26, 'Neha', 'Patil', 'Female', 'IT', 74000, '2022-04-16', 'Mumbai'),
(27, 'Rakesh', 'Sharma', 'Male', 'Finance', 81000, '2018-12-09', 'Pune'),
(28, 'Isha', 'Verma', 'Female', 'HR', 46000, '2024-03-01', 'Delhi'),
(29, 'Varun', 'Joshi', 'Male', 'IT', 88000, '2020-06-13', 'Pune'),
(30, 'Nikita', 'Desai', 'Female', 'Sales', 54000, '2023-09-22', 'Mumbai'),

(31, 'Suresh', 'Patil', 'Male', 'Finance', 69000, '2021-02-11', 'Nashik'),
(32, 'Pallavi', 'Kadam', 'Female', 'HR', 53000, '2022-08-27', 'Pune'),
(33, 'Atul', 'More', 'Male', 'IT', 95000, '2017-05-18', 'Mumbai'),
(34, 'Divya', 'Rao', 'Female', 'Finance', 64000, '2020-09-12', 'Delhi'),
(35, 'Nilesh', 'Shinde', 'Male', 'Sales', 57000, '2021-12-15', 'Pune'),
(36, 'Shreya', 'Kulkarni', 'Female', 'IT', 73000, '2023-01-28', 'Mumbai'),
(37, 'Ganesh', 'Jadhav', 'Male', 'HR', 44000, '2019-04-20', 'Nashik'),
(38, 'Tanvi', 'Pawar', 'Female', 'Finance', 76000, '2022-11-06', 'Pune'),
(39, 'Vivek', 'Rane', 'Male', 'Sales', 61000, '2020-01-17', 'Delhi'),
(40, 'Mansi', 'Chavan', 'Female', 'IT', 82000, '2021-07-19', 'Mumbai'),

(41, 'Sachin', 'Kale', 'Male', 'Finance', 70000, '2023-06-21', 'Pune'),
(42, 'Rutuja', 'Bhosale', 'Female', 'HR', 49000, '2020-11-14', 'Mumbai'),
(43, 'Pranav', 'Mehta', 'Male', 'IT', 86000, '2019-02-08', 'Delhi'),
(44, 'Simran', 'Shah', 'Female', 'Sales', 58000, '2022-03-25', 'Pune'),
(45, 'Harsh', 'Singh', 'Male', 'Finance', 73000, '2021-10-05', 'Mumbai'),
(46, 'Kiran', 'Nair', 'Female', 'IT', 66000, '2024-04-12', NULL),
(47, 'Deepak', 'Mishra', 'Male', NULL, 55000, '2022-09-18', 'Pune'),
(48, 'Anita', 'Yadav', 'Female', 'HR', NULL, '2023-07-07', 'Mumbai'),
(49, 'Ravi', 'Deshmukh', 'Male', 'Sales', 47000, NULL, 'Nashik'),
(50, 'Asha', 'Patil', 'Female', 'IT', 90000, '2020-05-15', 'Pune');

select * from employees;

select * from employees
where city is null;

select * from employees
where city is not null;

select * from employees
where department is not null;

select * from employees
where hire_date > '2023-01-01';

select * from employees
where hire_date like'%2024%';

SELECT *
FROM employees
WHERE YEAR(hire_date) = 2024;


select * from employees
where salary = 60000;

select * from employees
where salary order by salary desc
limit 5;

select * from employees 
where salary order by salary asc
limit 5;

select count(*) from employees;

select sum(salary) as total_salary from employees;

select department , count(*) as employee_count 
from employees
group by department;

select avg(salary) as avrage_salary
from employees;


select department , avg(salary) as avrage_salary 
from employees
group by department;

select department , count(*) as employee_count
from employees
group by department
having count(*) > 5;

select department , avg(salary) as avrage_salary
from employees
group by department
having avg(salary) > 60000;

select department , max(salary) as highest_salary
from employees
group by department;


select department ,  min(salary) as lowest_salary 
from employees
group by department;

select department , sum(salary) as total_salary
from employees
group by department;

# Find the number of employees hired in each year.
select year(hire_date) as hire_year,
count(*) as employee_count
from employees
group by year(hire_date);
# Find the number of employees in each city.

select city , count(*) as emp_city_count
from employees
group by city;

select count(*) as city_count
from employees
where city = 'pune';

select city , count(*) as city_count
from employees
group by city
having count(*) > 3;


select department , sum(salary) as total_exceeds_salary
from employees
group by department
having sum(salary) >= 500000;

select department , avg(salary) as highest_avrage_salary
from employees
group by department
order by highest_avrage_salary desc
limit 1;

select department , avg(salary) as lowest_avrage_salary
from employees
group by department
order by lowest_avrage_salary asc
limit 1;

select city , count(*) as employee_count
from employees
where city is not null 
group by city 
order by employee_count desc
limit 1;
#Find the department with the highest total salary.
select department , sum(salary) as total_salary
from employees
group by department
order by total_salary desc
limit 1;

select department, gender , avg(salary) as avrage_salary
from employees
group by department , gender;

select * from employees;

select 
    first_name,
    last_name,
    gender,
    department,
    salary,
    hire_date,
    city,
    count(*) as duplicate_count
from employees
group by
    first_name,
    last_name,
    gender,
    department,
    salary,
    hire_date,
    city
having count(*) >1;

select * from employees;




















