CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO departments (department_id, department_name)
VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(104, 'Sales'),
(105, 'Marketing'),
(106, 'Operations');

CREATE TABLE emp (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10,2),
    manager_id INT,
    hire_date DATE
);

INSERT INTO emp
(emp_id, emp_name, department_id, salary, manager_id, hire_date)
VALUES

-- IT
(1, 'Rahul', 101, 95000, NULL, '2018-01-10'),
(2, 'Amit', 101, 75000, 1, '2020-03-15'),
(3, 'Sneha', 101, 68000, 1, '2021-06-20'),
(4, 'Rohit', 101, 62000, 1, '2022-08-10'),
(5, 'Priya', 101, 58000, 1, '2023-01-15'),
(6, 'Akash', 101, 55000, 1, '2023-07-20'),

-- HR
(7, 'Anjali', 102, 85000, NULL, '2019-02-12'),
(8, 'Pooja', 102, 60000, 7, '2021-04-18'),
(9, 'Kavita', 102, 55000, 7, '2022-09-25'),

-- Finance
(10, 'Vikas', 103, 90000, NULL, '2018-05-15'),
(11, 'Arjun', 103, 70000, 10, '2020-10-10'),
(12, 'Neha', 103, 65000, 10, '2021-12-05'),
(13, 'Karan', 103, 60000, 10, '2023-02-14'),

-- Sales
(14, 'Raj', 104, 88000, NULL, '2019-01-20'),
(15, 'Sanjay', 104, 65000, 14, '2020-06-15'),
(16, 'Varun', 104, 60000, 14, '2021-08-20'),
(17, 'Nilesh', 104, 55000, 14, '2022-11-10'),

-- Employee with department
(18, 'Meena', 105, 58000, NULL, '2023-03-12'),

-- Employee with no department
(19, 'Ravi', NULL, 52000, NULL, '2023-05-20'),

-- Department ID that doesn't exist
(20, 'Suresh', 999, 57000, NULL, '2022-07-15'),

-- Manager from another department
(21, 'Deepak', 101, 45000, 7, '2024-01-10'),

-- More employees for manager count scenarios
(22, 'Aarti', 101, 52000, 1, '2024-02-15'),
(23, 'Manish', 101, 50000, 1, '2024-03-10'),
(24, 'Shreya', 101, 48000, 1, '2024-04-05');

select * from emp;
select * from departments;

-- Display employee name along with department name.

select 
	e.emp_name,
    d.department_name
from emp e
join departments d
on e.department_id = d.department_id;

-- Find employees who do not belong to any department.

select 
	e.emp_name,
    d.department_name
from emp e 
left join departments d 
on e.department_id = d.department_id
where d.department_id is null; 

-- Find departments that have no employees.

select
	d.department_name,
    d.department_id
from departments d 
left join emp e 
on d.department_id = e.department_id
where emp_id is null;








