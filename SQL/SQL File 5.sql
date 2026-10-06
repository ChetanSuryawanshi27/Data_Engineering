select * from customers;

select * from customers
where country in ('germany' , 'usa');

select * from customers
where first_name in ('arjun', 'olivia');

select * from customers
where first_name like 'm%';

select * from customers
where first_name like '%n';

select * from customers
where first_name like '%r%';

select * from customers
where first_name like '__i%';

select * from customers
where first_name like '____a%';