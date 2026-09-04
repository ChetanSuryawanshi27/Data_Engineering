CREATE TABLE emp (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(30),
    job_role VARCHAR(40),
    salary DECIMAL(10,2),
    experience_years INT,
    city VARCHAR(30),
    joining_date DATE,
    performance_score DECIMAL(4,2),
    age INT,
    gender VARCHAR(10),
    bonus DECIMAL(10,2)
);

INSERT INTO emp VALUES
(1, 'Amit Sharma', 'IT', 'Data Engineer', 75000, 3, 'Pune', '2022-06-15', 8.50, 26, 'Male', 5000),
(2, 'Priya Patil', 'HR', 'HR Executive', 48000, 2, 'Mumbai', '2023-01-10', 7.80, 25, 'Female', 3000),
(3, 'Rahul Deshmukh', 'IT', 'Software Engineer', 68000, 2, 'Pune', '2023-03-20', 8.20, 24, 'Male', 4000),
(4, 'Sneha Joshi', 'Finance', 'Accountant', 55000, 4, 'Nashik', '2021-07-12', 8.90, 28, 'Female', 4500),
(5, 'Rohit Kulkarni', 'IT', 'Data Analyst', 62000, 3, 'Mumbai', '2022-09-05', 7.50, 27, 'Male', 3500),
(6, 'Neha More', 'Sales', 'Sales Executive', 42000, 1, 'Pune', '2024-02-15', 6.80, 23, 'Female', 2500),
(7, 'Vikas Pawar', 'IT', 'DevOps Engineer', 82000, 5, 'Bangalore', '2020-05-18', 9.10, 30, 'Male', 7000),
(8, 'Pooja Shinde', 'HR', 'Recruiter', 45000, 2, 'Pune', '2023-06-11', 7.20, 26, 'Female', 2500),
(9, 'Sagar Jadhav', 'Finance', 'Financial Analyst', 70000, 4, 'Mumbai', '2021-11-25', 8.60, 29, 'Male', 5500),
(10, 'Anjali Patil', 'IT', 'Software Engineer', 72000, 3, 'Nashik', '2022-04-08', 8.30, 27, 'Female', 4500),

(11, 'Kunal Wagh', 'Sales', 'Sales Manager', 78000, 6, 'Mumbai', '2019-08-19', 9.20, 33, 'Male', 8000),
(12, 'Riya Chavan', 'IT', 'Data Engineer', 85000, 4, 'Bangalore', '2021-02-14', 9.00, 29, 'Female', 6500),
(13, 'Akash Pawar', 'Finance', 'Accountant', 52000, 2, 'Pune', '2023-09-10', 7.40, 25, 'Male', 3000),
(14, 'Megha Kale', 'HR', 'HR Manager', 76000, 7, 'Mumbai', '2018-03-15', 8.80, 35, 'Female', 7500),
(15, 'Nikhil Patil', 'IT', 'Cloud Engineer', 90000, 5, 'Pune', '2020-10-20', 9.30, 31, 'Male', 9000),
(16, 'Komal More', 'Sales', 'Sales Executive', 44000, 1, 'Nashik', '2024-01-05', 6.90, 22, 'Female', 2000),
(17, 'Swapnil Joshi', 'IT', 'Data Analyst', 60000, 2, 'Mumbai', '2023-02-12', 7.90, 26, 'Male', 3500),
(18, 'Shubhangi Deshmukh', 'Finance', 'Financial Analyst', 68000, 3, 'Pune', '2022-08-17', 8.70, 27, 'Female', 28),
(19, 'Pratik Shinde', 'IT', 'Software Engineer', 71000, 3, 'Bangalore', '2022-05-21', 8.10, 28, 'Male', 4000),
(20, 'Vaishnavi Pawar', 'HR', 'Recruiter', 47000, 2, 'Nashik', '2023-11-10', 7.60, 24, 'Female', 3000),

(21, 'Tejas Kulkarni', 'IT', 'Data Engineer', 88000, 5, 'Pune', '2020-06-10', 9.40, 32, 'Male', 8500),
(22, 'Sakshi Jadhav', 'Sales', 'Sales Executive', 43000, 1, 'Mumbai', '2024-03-12', 7.10, 23, 'Female', 2200),
(23, 'Omkar Wagh', 'Finance', 'Accountant', 58000, 4, 'Nashik', '2021-09-18', 8.20, 30, 'Male', 3500),
(24, 'Isha Patil', 'IT', 'DevOps Engineer', 80000, 4, 'Pune', '2021-12-15', 8.90, 29, 'Female', 6500),
(25, 'Manish Chavan', 'HR', 'HR Executive', 50000, 3, 'Mumbai', '2022-07-20', 7.70, 27, 'Male', 3500),
(26, 'Aarti Joshi', 'IT', 'Data Analyst', 64000, 3, 'Nashik', '2022-10-11', 8.40, 28, 'Female', 4000),
(27, 'Ganesh More', 'Sales', 'Sales Manager', 75000, 7, 'Pune', '2018-11-05', 8.80, 34, 'Male', 7500),
(28, 'Mrunal Kale', 'Finance', 'Financial Analyst', 72000, 5, 'Mumbai', '2020-03-17', 9.10, 31, 'Female', 5000),
(29, 'Yash Deshmukh', 'IT', 'Software Engineer', 69000, 2, 'Pune', '2023-04-14', 7.80, 25, 'Male', 3500),
(30, 'Rutuja Shinde', 'HR', 'Recruiter', 46000, 1, 'Bangalore', '2024-04-01', 7.30, 23, 'Female', 2500),

(31, 'Harsh Patil', 'IT', 'Cloud Engineer', 95000, 6, 'Bangalore', '2019-05-15', 9.50, 34, 'Male', 10000),
(32, 'Sonali Pawar', 'Finance', 'Accountant', 54000, 3, 'Pune', '2022-12-10', 7.90, 26, 'Female', 3000),
(33, 'Rohan Jadhav', 'IT', 'Data Engineer', 78000, 4, 'Mumbai', '2021-08-22', 8.60, 30, 'Male', 5500),
(34, 'Pallavi More', 'Sales', 'Sales Executive', 41000, 1, 'Nashik', '2024-05-10', 6.50, 22, 'Female', 1800),
(35, 'Shreyas Kulkarni', 'HR', 'HR Executive', 51000, 3, 'Pune', '2022-02-18', 8.10, 28, 'Male', 3500),
(36, 'Nandini Wagh', 'IT', 'DevOps Engineer', 87000, 5, 'Mumbai', '2020-09-25', 9.20, 32, 'Female', 7500),
(37, 'Aditya Patil', 'Finance', 'Financial Analyst', 66000, 2, 'Bangalore', '2023-05-17', 8.00, 25, 'Male', 3500),
(38, 'Tanvi Chavan', 'IT', 'Data Analyst', 63000, 3, 'Pune', '2022-06-30', 8.50, 27, 'Female', 4000),
(39, 'Siddhant Joshi', 'Sales', 'Sales Manager', 82000, 8, 'Mumbai', '2017-10-12', 9.00, 36, 'Male', 8500),
(40, 'Shruti Kale', 'HR', 'HR Manager', 79000, 8, 'Pune', '2017-06-20', 9.10, 36, 'Female', 8000),

(41, 'Vivek Deshmukh', 'IT', 'Software Engineer', 73000, 4, 'Nashik', '2021-04-12', 8.30, 29, 'Male', 4500),
(42, 'Madhuri Shinde', 'Finance', 'Accountant', 57000, 4, 'Mumbai', '2021-10-05', 8.40, 30, 'Female', 3500),
(43, 'Abhishek Pawar', 'IT', 'Data Engineer', 92000, 6, 'Pune', '2019-12-15', 9.60, 35, 'Male', 9500),
(44, 'Snehal More', 'Sales', 'Sales Executive', 45000, 2, 'Bangalore', '2023-07-11', 7.00, 24, 'Female', 2300),
(45, 'Mahesh Patil', 'Finance', 'Financial Analyst', 71000, 5, 'Pune', '2020-08-19', 8.90, 32, 'Male', 5000),
(46, 'Kavita Joshi', 'IT', 'Cloud Engineer', 89000, 5, 'Mumbai', '2020-11-23', 9.30, 31, 'Female', 8500),
(47, 'Sachin Wagh', 'HR', 'Recruiter', 44000, 2, 'Nashik', '2023-08-15', 7.50, 25, 'Male', 2500),
(48, 'Rashmi Patil', 'IT', 'Data Analyst', 61000, 3, 'Bangalore', '2022-03-10', 8.00, 27, 'Female', 3500),
(49, 'Deepak Chavan', 'Sales', 'Sales Executive', 46000, 2, 'Pune', '2023-10-05', 7.20, 26, 'Male', 2500),
(50, 'Amruta Kale', 'Finance', 'Finance Manager', 85000, 9, 'Mumbai', '2016-05-15', 9.40, 38, 'Female', 9000);


select * from emp;

# 1. High Salary Employees
# The HR team wants to identify employees earning more than ₹70,000. Display employee name, department and salary.

select employee_name, department , salary
from emp
where salary > 70000;

# 2. Pune Employees
# The company wants a list of all employees working in Pune.

select * from emp
where city = 'pune';

# 3. IT Employees
# Find all employees who belong to the IT department and have more than 3 years of experience.

select * from emp
where department = 'IT' and experience_years >= 3;

# 4. Recent Employees
# Find employees who joined the company after January 1, 2023.

select * from emp 
where joining_date > '2023-01-01';

# 5. Young Employees
# Find employees whose age is less than 25.

select * from emp
where age  < 25;

# 6. High Performers
# Find employees with a performance score of 8.5 or higher.

select * from emp
where performance_score >= 8.5;

# 7. Salary Range
# Find employees whose salary is between ₹60,000 and ₹80,000.

select * from emp
where salary between 60000 and 80000;

# 8. Specific Roles
# Find employees whose job role is either Data Engineer or Data Analyst.

select * from emp
where job_role in( 'data engineer' , 'Data Analyst');

# 9. Employee Name Search
# Find all employees whose names contain the letter 'a'.

select * from emp
where employee_name like '%a%';

# 10. Experience Analysis
# Find employees having more than 5 years of experience and a salary greater than ₹75,000.

select * from emp
where experience_years > 5 and salary > 75000;

# GROUP BY & Aggregate Scenarios

# 11. Department Salary Analysis
# Calculate the average salary for each department.

select department, avg(salary) as average_salary
from  emp
group by department;

# 12. Department Headcount
# Find the number of employees in each department.

select department , count(*) as emp_count
from emp
group by department;

# 13. Maximum Salary
# Find the highest salary in each department.	

select department,  max(salary) as highest_salary
from emp
group by department;

# 14. Minimum Salary
# Find the lowest salary in each department.

select department , min(salary) as lowest_salary
from emp
group by department;

# 15. Total Salary Budget
# Calculate the total salary paid by each department.

select department ,  sum(salary) as total_salary
from emp
group by department;

# 16. Department Performance
# Calculate the average performance score for each department.

select department , avg(performance_score) as avg_score
from emp
group by department;

# 17. Cities with Many Employees
# Find cities having more than 5 employees.

select city , count(*) as emp_count
from emp
group by city
having count(*) > 5;

# 18. Salary-Based Department Filtering
# Find departments whose average salary is greater than ₹65,000.

select department, avg(salary) as avg_salary
from emp
group by department
having avg(salary) > 65000;

#CASE / Business Logic Scenarios

/*19. Salary Category
The company wants to categorize employees:

Salary >= ₹80,000 → High
Salary >= ₹60,000 → Medium
Otherwise → Low
*/

select 
		employee_name,
        salary,
			case
				when salary >= 80000  then 'high'
                when salary >= 60000  then 'medium'
                else 'low'
			end as salary_category
	from emp;

/* 20. Performance Category
Create performance categories:

Score >= 9 → Excellent
Score >= 8 → Good
Otherwise → Needs Improvement
*/

select 
	employee_name,
    performance_score,
		case
			when performance_score >= 9 then 'Excellent'
            when performance_score >= 8 then 'Good'
            else 'Needs Improvment'
		end as performance_category
from emp;

# 21. Experience Level
/*
Categorize employees:

Experience >= 6 → Senior
Experience >= 3 → Mid-Level
Otherwise → Junior
*/

select 
	employee_id,
	employee_name,
    experience_years,
		case
			when experience_years >= 6 then 'Senior'
            when experience_years >= 3 then 'Mid-Level'
            else 'Junior'
		end as Experience_Level
from emp;

# 22. Bonus Calculation
/* Calculate the total compensation for each employee:

salary + bonus

Display employee name, salary, bonus and total compensation.
*/

select 
	employee_name,
    salary,
    bonus,
		salary + bonus as total_compensation
from emp;

# Subquery / Advanced Scenarios

# 23. Above Average Salary
# Find employees whose salary is greater than the overall average salary.

select 
	employee_id,
    employee_name,
    salary
from emp
where salary > (
	select avg(salary)
    from emp
);

# 24. Highest Paid Employee
# Find the employee(s) who receive the highest salary in the company.

select 
	employee_id,
    employee_name,
    salary
from emp
where salary = (
	select max(salary) 
    from emp
);

# 25. Second Highest Salary
# Find the employee(s) receiving the second-highest salary.

select 
	employee_id,
    employee_name,
    salary
    from emp
where salary =(
	select max(salary)
    from emp
where salary < (
	select max(salary)
    from emp
)
);


# 26. Above Department Average
# Find employees whose salary is greater than the average salary of their own department.

select 
	employee_id,
    employee_name,
    department,
    salary
from emp e
where salary > (
	select avg(salary)
    from emp
    where department = e.department
);

# Window Function Scenarios

# 27. Salary Ranking
# Rank all employees according to salary from highest to lowest using RANK().

select 
	employee_id,
    employee_name,
    department,
    salary,
    rank() over(order by salary desc) as salary_rank
    from emp;
    
# 28. Department Salary Ranking
# Rank employees based on salary within each department.

select 
	employee_id,
    employee_name,
    department,
    salary,
    rank() over(partition by department order by salary desc) as salary_ranking
    from emp;
    
# 29. Top 2 Employees Per Department
# The management wants the top 2 highest-paid employees from every department.

select 
	employee_id,
    employee_name,
    department,
    salary,
    salary_rank
from(
	select
	employee_id,
    employee_name,
    department,
    salary,
    rank() over(partition by department order by salary desc) as salary_rank
    from emp
) as ranked_employee
where salary_rank <= 2;

# 30. Running Salary Total
# Management wants to understand how the salary budget accumulates when employees are ordered by their joining date.

select 
	employee_id,
    employee_name,
    department,
    salary,
    sum(salary) over(order by joining_date ) as running_salary_total
    from emp
    order by joining_date;





