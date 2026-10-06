-- step 1 how to create database
create database Bikkad_IT18;

-- step 2 how to select and use database
use  Bikkad_IT18;

create table Student_info(
id int,
name varchar(50),
age int);

create table employee_info(
emp_id int,
emp_name varchar(50),
emp_age int);


describe Student_info;

select * from Student_info;
select * from employee_info;

describe employee_info;

select * from student_info limit 1;

select * from student_info where  age >= 19;

select count(*) as Total_Count from Student_info;

select distinct(age) from student_info;


-- how to add the values
insert into Student_info (id,name,age) values(1,'Chetan Rajesh Suryawanshi',23);

insert into student_info (id,name,age) values 
(2,'Dhruv Nitin Wadile', 14),
(3,'Mahee Rajesh Suryawanshi',19);


insert into Student_info (id,name,age) values(4,'Pratik chandrakant Nehete',23);

select id from student_info;
select id,name from student_info;
insert into Student_info (id,name,age) values(5,'Chetan Rajesh Suryawanshi',25);
select distinct(name) from student_info;
select count(distinct(name)) from student_info;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50),
    marks DECIMAL(5,2),
    enrollment_date DATE
);
INSERT INTO students VALUES
(1,'Aarav','Sharma',20,'Male','Mumbai',78.5,'2023-06-15'),
(2,'Vivaan','Patel',22,'Male','Ahmedabad',82.0,'2022-07-10'),
(3,'Aditya','Verma',19,'Male','Delhi',69.5,'2023-01-12'),
(4,'Vihaan','Reddy',21,'Male','Hyderabad',74.0,'2022-09-01'),
(5,'Arjun','Nair',23,'Male','Kochi',88.0,'2021-08-20'),
(6,'Sai','Kumar',20,'Male','Chennai',91.5,'2023-03-11'),
(7,'Reyansh','Gupta',22,'Male','Lucknow',67.0,'2022-11-25'),
(8,'Krishna','Iyer',21,'Male','Bangalore',85.0,'2022-05-14'),
(9,'Ishaan','Mehta',19,'Male','Pune',72.5,'2023-02-18'),
(10,'Shaurya','Singh',20,'Male','Jaipur',79.0,'2023-06-01'),

(11,'Ananya','Sharma',20,'Female','Mumbai',81.0,'2023-06-15'),
(12,'Diya','Patel',22,'Female','Ahmedabad',77.5,'2022-07-10'),
(13,'Saanvi','Verma',19,'Female','Delhi',68.0,'2023-01-12'),
(14,'Aadhya','Reddy',21,'Female','Hyderabad',74.5,'2022-09-01'),
(15,'Pari','Nair',23,'Female','Kochi',89.0,'2021-08-20'),
(16,'Myra','Kumar',20,'Female','Chennai',92.5,'2023-03-11'),
(17,'Ira','Gupta',22,'Female','Lucknow',70.0,'2022-11-25'),
(18,'Navya','Iyer',21,'Female','Bangalore',84.0,'2022-05-14'),
(19,'Sara','Mehta',19,'Female','Pune',73.0,'2023-02-18'),
(20,'Riya','Singh',20,'Female','Jaipur',80.5,'2023-06-01'),

(21,'Kabir','Das',21,'Male','Kolkata',65.0,'2022-01-01'),
(22,'Aryan','Joshi',22,'Male','Nagpur',71.5,'2022-02-02'),
(23,'Rohan','Kulkarni',20,'Male','Pune',76.0,'2023-03-03'),
(24,'Kunal','Yadav',23,'Male','Delhi',83.0,'2021-04-04'),
(25,'Manav','Chopra',19,'Male','Chandigarh',69.0,'2023-05-05'),

(26,'Sneha','Das',21,'Female','Kolkata',66.5,'2022-01-01'),
(27,'Pooja','Joshi',22,'Female','Nagpur',72.0,'2022-02-02'),
(28,'Neha','Kulkarni',20,'Female','Pune',75.5,'2023-03-03'),
(29,'Kavya','Yadav',23,'Female','Delhi',84.0,'2021-04-04'),
(30,'Anjali','Chopra',19,'Female','Chandigarh',70.0,'2023-05-05'),

(31,'Rahul','Mishra',21,'Male','Varanasi',68.0,'2022-06-06'),
(32,'Amit','Tiwari',22,'Male','Bhopal',74.0,'2022-07-07'),
(33,'Deepak','Pandey',20,'Male','Patna',77.0,'2023-08-08'),
(34,'Suresh','Yadav',23,'Male','Kanpur',82.0,'2021-09-09'),
(35,'Vikas','Jain',19,'Male','Indore',71.0,'2023-10-10'),

(36,'Nisha','Mishra',21,'Female','Varanasi',69.0,'2022-06-06'),
(37,'Ritu','Tiwari',22,'Female','Bhopal',75.0,'2022-07-07'),
(38,'Priya','Pandey',20,'Female','Patna',78.0,'2023-08-08'),
(39,'Swati','Yadav',23,'Female','Kanpur',83.0,'2021-09-09'),
(40,'Meena','Jain',19,'Female','Indore',72.0,'2023-10-10'),

(41,'Student1','Test',20,'Male','City1',60,'2023-01-01'),
(42,'Student2','Test',21,'Female','City2',61,'2023-01-02'),
(43,'Student3','Test',22,'Male','City3',62,'2023-01-03'),
(44,'Student4','Test',23,'Female','City4',63,'2023-01-04'),
(45,'Student5','Test',20,'Male','City5',64,'2023-01-05'),
(46,'Student6','Test',21,'Female','City6',65,'2023-01-06'),
(47,'Student7','Test',22,'Male','City7',66,'2023-01-07'),
(48,'Student8','Test',23,'Female','City8',67,'2023-01-08'),
(49,'Student9','Test',20,'Male','City9',68,'2023-01-09'),
(50,'Student10','Test',21,'Female','City10',69,'2023-01-10');

select*from students;

select * from students where city='pune';

select count(distinct(city)) from students where city= 'pune';

select * from students 
where gender='female' or city='anturli';

select count(*)from students where marks<>70.00;

select * from students where marks <> 61.00;

select * from students where first_name like '%A';
select * from students where first_name like 'A%';
select * from students where city like '%pune%';
select * from students where student_id like '%2_%';
select * from students where city in('pune','mumbai');
select * from students where city not in('pune','mumbai');
select * from students where marks between 60.00 and 70.00;
select * from students where age between 18 and 20;
select * from students where enrollment_date between '2023-06-01' and '2023-06-15';

SELECT * 
FROM students
ORDER BY marks DESC
LIMIT 5;

update students 
set
city='Pune'
where student_id = 1;

select*from students;

-- Ascending
-- Desending

select * from students order by first_name asc;
select * from students order by first_name desc;

-- LIMIT
-- OFFSET

select student_id from students limit 50 offset 40;
select student_id from students limit 10 offset 10;
select student_id from students limit 10 offset 40;
select student_id from students limit 4 offset 10;

-- group by

select age, count(*) as total_members
from students
group by age;

select gender, avg(marks) as total_marks
from students
group by gender;

select* from students;

-- alter
-- to add column

alter table students
add email varchar(50);

alter table students
add(
mobile_no int,
subjects varchar(50));

describe students;

alter table students
add prn_no int first;

alter table students 
add adhaar_no int default 1250;

alter table students 
add state varchar(50) after city;
 
alter table students
drop column email,
drop column adhaar_no;

select * from students;
 -- how to change the data type 
 
 alter table students
 modify age decimal(10.00);
 
 describe students;
 
 select * from students;
 
 alter table employee_info
 rename to employee_details;
 
 alter table students
 change prn_no PRN_NO int;
 

 
 CREATE TABLE employee_details (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    department VARCHAR(50),
    salary INT,
    hire_date DATE,
    city VARCHAR(50)
);
describe employee_details;

INSERT INTO employee_details VALUES
(1,'Amit','Sharma','Male','HR',45000,'2021-03-15','Mumbai'),
(2,'Neha','Verma','Female','IT',75000,'2020-07-10','Delhi'),
(3,'Rahul','Patel','Male','Finance',65000,'2019-01-20','Ahmedabad'),
(4,'Sneha','Iyer','Female','IT',82000,'2022-05-11','Chennai'),
(5,'Vikram','Singh','Male','Sales',55000,'2018-09-23','Jaipur'),
(6,'Pooja','Mehta','Female','HR',48000,'2021-11-30','Pune'),
(7,'Arjun','Reddy','Male','IT',90000,'2017-06-14','Hyderabad'),
(8,'Kavya','Nair','Female','Finance',70000,'2020-02-25','Kochi'),
(9,'Rohan','Das','Male','Sales',60000,'2019-08-19','Kolkata'),
(10,'Anjali','Gupta','Female','IT',85000,'2023-01-01','Delhi'),

(11,'Manish','Yadav','Male','HR',42000,'2022-02-14','Lucknow'),
(12,'Priya','Kapoor','Female','Finance',72000,'2018-12-05','Mumbai'),
(13,'Suresh','Naik','Male','Sales',53000,'2021-06-18','Goa'),
(14,'Divya','Menon','Female','IT',91000,'2017-10-10','Bangalore'),
(15,'Karan','Malhotra','Male','Finance',68000,'2019-04-22','Delhi'),
(16,'Meena','Joshi','Female','HR',46000,'2020-09-09','Indore'),
(17,'Nikhil','Jain','Male','IT',78000,'2021-12-12','Bhopal'),
(18,'Swati','Agarwal','Female','Sales',59000,'2018-03-03','Kanpur'),
(19,'Deepak','Chopra','Male','Finance',71000,'2019-07-07','Delhi'),
(20,'Ritu','Bansal','Female','IT',88000,'2022-08-08','Chandigarh'),

(21,'Ajay','Kulkarni','Male','HR',47000,'2020-05-05','Pune'),
(22,'Shreya','Ghosh','Female','Finance',76000,'2021-01-17','Kolkata'),
(23,'Varun','Khanna','Male','Sales',61000,'2019-11-11','Delhi'),
(24,'Isha','Arora','Female','IT',83000,'2022-06-06','Gurgaon'),
(25,'Rakesh','Mishra','Male','HR',44000,'2018-10-30','Varanasi'),
(26,'Tanvi','Desai','Female','Finance',69000,'2021-03-27','Surat'),
(27,'Mohit','Saxena','Male','IT',87000,'2020-04-04','Noida'),
(28,'Komal','Patel','Female','Sales',58000,'2019-02-21','Ahmedabad'),
(29,'Ankit','Pandey','Male','IT',92000,'2017-07-07','Lucknow'),
(30,'Nisha','Shetty','Female','Finance',73000,'2022-09-09','Mangalore'),

(31,'Sanjay','Dubey','Male','HR',41000,'2021-08-08','Patna'),
(32,'Pallavi','Rao','Female','IT',89000,'2020-12-12','Bangalore'),
(33,'Harsh','Tiwari','Male','Sales',62000,'2019-05-05','Allahabad'),
(34,'Geeta','Kumari','Female','Finance',74000,'2021-10-10','Ranchi'),
(35,'Raj','Thakur','Male','IT',95000,'2016-01-01','Shimla'),
(36,'Alka','Singh','Female','HR',43000,'2022-03-03','Jaipur'),
(37,'Sameer','Qureshi','Male','Finance',77000,'2018-08-08','Bhopal'),
(38,'Lata','Pillai','Female','Sales',56000,'2020-11-11','Trivandrum'),
(39,'Imran','Khan','Male','IT',91000,'2017-09-09','Hyderabad'),
(40,'Neelam','Chauhan','Female','Finance',72000,'2019-06-06','Dehradun'),

(41,'Aakash','Soni','Male','HR',45000,'2021-04-04','Udaipur'),
(42,'Bhavna','Shah','Female','IT',86000,'2022-07-07','Rajkot'),
(43,'Chetan','Pawar','Male','Sales',60000,'2018-01-15','Nagpur'),
(44,'Diksha','Kaur','Female','Finance',75000,'2020-03-03','Amritsar'),
(45,'Eshan','Roy','Male','IT',88000,'2019-09-09','Kolkata'),
(46,'Farah','Ali','Female','HR',47000,'2021-02-02','Mumbai'),
(47,'Gaurav','Bhatia','Male','Finance',71000,'2018-06-06','Delhi'),
(48,'Hina','Ansari','Female','Sales',57000,'2022-01-01','Lucknow'),
(49,'Irfan','Shaikh','Male','IT',93000,'2017-12-12','Pune'),
(50,'Juhi','Sethi','Female','Finance',74000,'2020-10-10','Delhi');

INSERT INTO employee_details VALUES
(51,'Abhishek','Srivastava','Male','IT',87000,'2021-05-15','Delhi'),
(52,'Priti','Shinde','Female','HR',46000,'2020-08-20','Pune'),
(53,'Yash','Agarwal','Male','Finance',71000,'2019-02-11','Kolkata'),
(54,'Nandini','Reddy','Female','IT',92000,'2022-11-01','Hyderabad'),
(55,'Ravi','Chauhan','Male','Sales',58000,'2018-07-19','Jaipur'),
(56,'Sonali','Patil','Female','HR',49000,'2021-09-25','Mumbai'),
(57,'Tarun','Bansal','Male','IT',89000,'2017-03-03','Noida'),
(58,'Aarti','Nair','Female','Finance',73000,'2020-01-14','Kochi'),
(59,'Kunal','Sharma','Male','Sales',61000,'2019-10-10','Delhi'),
(60,'Rekha','Iyer','Female','IT',86000,'2023-02-02','Chennai'),

(61,'Vivek','Pandey','Male','HR',43000,'2022-04-04','Varanasi'),
(62,'Shalini','Kapoor','Female','Finance',75000,'2018-11-11','Mumbai'),
(63,'Ritesh','Yadav','Male','Sales',54000,'2021-07-07','Lucknow'),
(64,'Deepa','Menon','Female','IT',91000,'2017-08-08','Bangalore'),
(65,'Anurag','Sinha','Male','Finance',69000,'2019-06-15','Patna'),
(66,'Kiran','Joshi','Female','HR',47000,'2020-10-20','Indore'),
(67,'Rohit','Jain','Male','IT',78000,'2021-12-30','Bhopal'),
(68,'Snehal','Desai','Female','Sales',60000,'2018-05-05','Surat'),
(69,'Aman','Malik','Male','Finance',72000,'2019-09-09','Delhi'),
(70,'Preeti','Arora','Female','IT',88000,'2022-06-06','Gurgaon'),

(71,'Siddharth','Kulkarni','Male','HR',45000,'2020-03-03','Pune'),
(72,'Neel','Ghosh','Male','Finance',76000,'2021-01-01','Kolkata'),
(73,'Komal','Khanna','Female','Sales',59000,'2019-12-12','Delhi'),
(74,'Ishita','Mishra','Female','IT',83000,'2022-07-07','Noida'),
(75,'Lokesh','Tiwari','Male','HR',44000,'2018-10-10','Allahabad'),
(76,'Tanmay','Patel','Male','Finance',70000,'2021-02-02','Ahmedabad'),
(77,'Pankaj','Saxena','Male','IT',87000,'2020-05-05','Lucknow'),
(78,'Riya','Shetty','Female','Sales',57000,'2019-03-03','Mangalore'),
(79,'Saurabh','Gupta','Male','IT',92000,'2017-11-11','Delhi'),
(80,'Nikita','Shah','Female','Finance',74000,'2022-08-08','Rajkot'),

(81,'Manoj','Dubey','Male','HR',42000,'2021-06-06','Patna'),
(82,'Pooja','Rao','Female','IT',89000,'2020-12-01','Bangalore'),
(83,'Harish','Tiwari','Male','Sales',62000,'2019-04-04','Allahabad'),
(84,'Geetanjali','Kumari','Female','Finance',75000,'2021-10-01','Ranchi'),
(85,'Rajat','Thakur','Male','IT',95000,'2016-02-02','Shimla'),
(86,'Alok','Singh','Male','HR',43000,'2022-03-15','Jaipur'),
(87,'Sameera','Qureshi','Female','Finance',77000,'2018-08-20','Bhopal'),
(88,'Lalit','Pillai','Male','Sales',56000,'2020-11-30','Trivandrum'),
(89,'Imtiyaz','Khan','Male','IT',91000,'2017-09-15','Hyderabad'),
(90,'Neha','Chauhan','Female','Finance',72000,'2019-06-25','Dehradun'),

(91,'Amitabh','Soni','Male','HR',46000,'2021-04-18','Udaipur'),
(92,'Bhavya','Shah','Female','IT',86000,'2022-07-20','Rajkot'),
(93,'Chirag','Pawar','Male','Sales',60000,'2018-01-25','Nagpur'),
(94,'Disha','Kaur','Female','Finance',75000,'2020-03-18','Amritsar'),
(95,'Eshaan','Roy','Male','IT',88000,'2019-09-30','Kolkata'),
(96,'Fatima','Ali','Female','HR',47000,'2021-02-14','Mumbai'),
(97,'Girish','Bhatia','Male','Finance',71000,'2018-06-21','Delhi'),
(98,'Himani','Ansari','Female','Sales',58000,'2022-01-11','Lucknow'),
(99,'Ishaan','Shaikh','Male','IT',93000,'2017-12-25','Pune'),
(100,'Juhi','Sethi','Female','Finance',74000,'2020-10-20','Delhi');

select * from employee_details;

select count(*) from employee_details;

-- 1 Find all employees with a salary greater than 50,000.

select * from employee_details
where salary <50000;

-- 2 Retrieve employees who work in the 'IT' department.

select * from employee_detail
where department = 'IT';

-- 3 Get employees from 'Delhi' or 'Pune'.

select * from employee_details
where city in ('Delhi', 'Pune');

-- 4 Find employees hired before 2020.

select * from employee_details
where hire_date < '2020-01-01';

-- 5 List employees whose first name starts with 'S'.

select * from employee_details
where first_name like 'S%';

-- 6 Find employees whose last name ends with 'a'.

select * from employee_details
where last_name like '%a';

-- 7 Get employees whose salary is between 50,000 and 80,000.

select * from employee_details
where salary between 50000 and 80000;

-- 8 Find employees NOT in the 'HR' department.

select * from employee_details
where department <> 'HR'; 

-- 9 Retrieve female employees working in 'Finance'.

select * from employee_details
where gender = 'female'
and department = 'finance';

-- 10. Employees not from HR department

select * from employee_details
where department = 'HR';

-- 11. Employees whose name ends with 'a' and are female

SELECT *
FROM employee_details
WHERE gender = 'Female'
AND first_name LIKE '%a';

-- 12. Employees from IT in Delhi with salary > 85,000.

select * from employee_details
where department = 'IT'
and city = 'Delhi'
and salary > 70000;

-- 13 Show employees sorted by salary (high → low)

select * from employee_details
order by salary desc;

-- 14 Sort by hire_date (oldest first)

select * from employee_details
order by hire_date desc;

-- 15 Sort by department then salary descending

select * from employee_details
order by department asc, salary desc;

-- First groups by city, then shows highest paid employees first in each city

select * from employee_details
order by city asc, salary desc;

-- First groups by department, then shows most recently hired employees first

select * from employee_details
order by department asc, hire_date desc;






