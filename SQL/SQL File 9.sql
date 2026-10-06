CREATE TABLE employee_quality (
    emp_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employee_quality
(emp_id, first_name, last_name, email, phone, department, salary, hire_date)
VALUES
(1, 'Rahul', 'Sharma', 'rahul@gmail.com', '9876543210', 'IT', 65000, '2022-01-15'),
(2, 'Priya', 'Patil', 'priya@gmail.com', '9876543211', 'HR', 48000, '2021-03-20'),
(3, 'Amit', 'Verma', 'amit@gmail.com', '9876543212', 'Finance', 72000, '2020-07-10'),
(4, 'Sneha', 'Joshi', 'sneha@gmail.com', '9876543213', 'IT', 58000, '2023-02-18'),
(5, 'Rohit', 'Deshmukh', 'rohit@gmail.com', '9876543214', 'Sales', 45000, '2022-06-25'),

(6, 'Anjali', 'Shinde', 'anjali@gmail.com', '9876543215', 'HR', 52000, '2023-08-12'),
(7, 'Akash', 'Kulkarni', 'akash@gmail.com', '9876543216', 'IT', 85000, '2019-11-05'),
(8, 'Neha', 'Gupta', 'neha@gmail.com', '9876543217', 'Finance', 68000, '2021-09-15'),
(9, 'Raj', 'Mehta', 'raj@gmail.com', '9876543218', 'Sales', 55000, '2022-12-01'),
(10, 'Pooja', 'Pawar', 'pooja@gmail.com', '9876543219', 'IT', 62000, '2024-01-10'),

-- Duplicate employee record
(10, 'Pooja', 'Pawar', 'pooja@gmail.com', '9876543219', 'IT', 62000, '2024-01-10'),

(11, 'Arjun', 'Rane', 'arjun@gmail.com', '9876543220', 'Finance', 78000, '2020-04-22'),
(12, 'Kavita', 'More', 'kavita@gmail.com', '9876543221', 'HR', 47000, '2021-06-18'),
(13, 'Aditya', 'Kale', 'aditya@gmail.com', '9876543222', 'IT', 91000, '2018-03-12'),
(14, 'Snehal', 'Jadhav', 'snehal@gmail.com', '9876543223', 'Sales', 51000, '2023-05-20'),
(15, 'Vikas', 'Chavan', 'vikas@gmail.com', '9876543224', 'Finance', 60000, '2022-10-11'),

-- Duplicate email
(16, 'Aarti', 'Suryawanshi', 'rahul@gmail.com', '9876543225', 'IT', 75000, '2020-12-05'),

(17, 'Abhishek', 'Yadav', 'abhishek@gmail.com', '9876543226', 'Sales', 49000, '2024-02-14'),
(18, 'Meena', 'Shah', 'meena@gmail.com', '9876543227', 'HR', 56000, '2019-08-19'),

-- NULL email
(19, 'Karan', 'Singh', NULL, '9876543228', 'IT', 83000, '2021-01-25'),

-- NULL phone
(20, 'Riya', 'Nair', 'riya@gmail.com', NULL, 'Finance', 71000, '2023-11-30'),

(21, 'Sanjay', 'Mishra', 'sanjay@gmail.com', '9876543230', 'Sales', 43000, '2020-02-15'),
(22, 'Komal', 'Thakur', 'komal@gmail.com', '9876543231', 'HR', 50000, '2022-07-08'),
(23, 'Aryan', 'Patel', 'aryan@gmail.com', '9876543232', 'IT', 67000, '2023-03-17'),
(24, 'Swati', 'Bhosale', 'swati@gmail.com', '9876543233', 'Finance', 59000, '2021-05-10'),

-- Negative salary
(25, 'Manish', 'Gupta', 'manish@gmail.com', '9876543234', 'Sales', -63000, '2019-10-21'),

(26, 'Neha', 'Patil', 'neha.patil@gmail.com', '9876543235', 'IT', 74000, '2022-04-16'),
(27, 'Rakesh', 'Sharma', 'rakesh@gmail.com', '9876543236', 'Finance', 81000, '2018-12-09'),

-- NULL department
(28, 'Isha', 'Verma', 'isha@gmail.com', '9876543237', NULL, 46000, '2024-03-01'),

(29, 'Varun', 'Joshi', 'varun@gmail.com', '9876543238', 'IT', 88000, '2020-06-13'),
(30, 'Nikita', 'Desai', 'nikita@gmail.com', '9876543239', 'Sales', 54000, '2023-09-22'),

-- NULL salary
(31, 'Suresh', 'Patil', 'suresh@gmail.com', '9876543240', 'Finance', NULL, '2021-02-11'),

(32, 'Pallavi', 'Kadam', 'pallavi@gmail.com', '9876543241', 'HR', 53000, '2022-08-27'),
(33, 'Atul', 'More', 'atul@gmail.com', '9876543242', 'IT', 95000, '2017-05-18'),
(34, 'Divya', 'Rao', 'divya@gmail.com', '9876543243', 'Finance', 64000, '2020-09-12'),

-- Future hire date
(35, 'Nilesh', 'Shinde', 'nilesh@gmail.com', '9876543244', 'Sales', 57000, '2030-12-15'),

(36, 'Shreya', 'Kulkarni', 'shreya@gmail.com', '9876543245', 'IT', 73000, '2023-01-28'),
(37, 'Ganesh', 'Jadhav', 'ganesh@gmail.com', '9876543246', 'HR', 44000, '2019-04-20'),
(38, 'Tanvi', 'Pawar', 'tanvi@gmail.com', '9876543247', 'Finance', 76000, '2022-11-06'),
(39, 'Vivek', 'Rane', 'vivek@gmail.com', '9876543248', 'Sales', 61000, '2020-01-17'),
(40, 'Mansi', 'Chavan', 'mansi@gmail.com', '9876543249', 'IT', 82000, '2021-07-19'),

-- Duplicate phone number
(41, 'Sachin', 'Kale', 'sachin@gmail.com', '9876543249', 'Finance', 70000, '2023-06-21'),

(42, 'Rutuja', 'Bhosale', 'rutuja@gmail.com', '9876543251', 'HR', 49000, '2020-11-14'),
(43, 'Pranav', 'Mehta', 'pranav@gmail.com', '9876543252', 'IT', 86000, '2019-02-08'),

-- NULL employee ID
(NULL, 'Simran', 'Shah', 'simran@gmail.com', '9876543253', 'Sales', 58000, '2022-03-25'),

(45, 'Harsh', 'Singh', 'harsh@gmail.com', '9876543254', 'Finance', 73000, '2021-10-05'),

-- Invalid email
(46, 'Kiran', 'Nair', 'kiran-gmail.com', '9876543255', 'IT', 66000, '2024-04-12'),

-- Duplicate name + department + salary
(47, 'Rahul', 'Sharma', 'rahul2@gmail.com', '9876543256', 'IT', 65000, '2022-01-15'),

-- Duplicate email again
(48, 'Rohit', 'Kumar', 'rohit@gmail.com', '9876543257', 'Marketing', 60000, '2023-05-10'),

-- NULL salary and NULL department
(49, 'Asha', 'Patil', 'asha@gmail.com', '9876543258', NULL, NULL, '2024-05-15'),

-- Another duplicate phone
(50, 'Vijay', 'Patil', 'vijay@gmail.com', '9876543254', 'Sales', 52000, '2022-09-10');


select * from employee_quality;

select email , count(*) as employee_count
from employee_quality
group by email
having count(*) >1;

select first_name , last_name , count(*) as employee_count 
from employee_quality
group by
	first_name,
    last_name
having count(*) >1;

select
	first_name,
    last_name,
    department,
count(*) as duplicates
from employee_quality
group by 
	first_name,
    last_name,
    department
having count(*) >1;

select * from employee_quality
where salary is null;

select * from employee_quality
where department is null;

update employee_quality
set salary = 0
where salary is null;


select * from employee_quality;

update employee_quality 
set department = 'UnKnown'
where department is null;


select * from employee_quality
where salary like '-%';

select * from employee_quality
where salary < 0 ;

select * from employee_quality 
where hire_date > curdate();

select * from employee_quality
where emp_id is null;

select phone , count(*) as employee_count
from employee_quality
where phone is not null
group by phone
having count(*) >1 ;

select department , count(*) as employee_count
from employee_quality
where department is not null
group by department
having count(*) > 1;

















