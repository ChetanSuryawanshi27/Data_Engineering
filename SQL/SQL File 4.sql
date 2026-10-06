CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    country VARCHAR(50),
    score INT
);

INSERT INTO customers (customer_id, first_name, country, score)
VALUES
(1, 'Amit', 'India', 450),
(2, 'Priya', 'India', 820),
(3, 'John', 'USA', 670),
(4, 'Emma', 'UK', 390),
(5, 'Rahul', 'India', 540),
(6, 'Sophia', 'Canada', 880),
(7, 'David', 'Australia', 730),
(8, 'Neha', 'India', 260),
(9, 'Michael', 'USA', 510),
(10, 'Olivia', 'UK', 790),
(11, 'Arjun', 'India', 610),
(12, 'James', 'Canada', 340),
(13, 'Ananya', 'India', 900),
(14, 'Daniel', 'USA', 420),
(15, 'Sara', 'Australia', 690),
(16, 'Rohan', 'India', 230),
(17, 'Lucas', 'Germany', 570),
(18, 'Meera', 'India', 850),
(19, 'William', 'France', 760),
(20, 'Kavya', 'India', 310);

select * from customers;

select * from customers
where country = 'usa'  and score > 500;

select * from customers
where country = 'usa'  or score > 500;

select * from customers
where  not score < 500;

select * from customers
where score between 200 and 500;