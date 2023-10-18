Select distinct salary from ( select distinct  salary from emp order by salary desc limit 2)A 
order by salary limit 1;

use learnbayday1;

create table emp1 ( name varchar(25), salary int);
insert into emp1 values ("arun", 1000);
insert into emp1 values ("anil", 2000);
insert into emp1 values ("ayan", 3000);

select * from emp1;
Select distinct salary, name from ( select distinct  salary, name from emp1 order by salary desc limit 2)A 
order by salary limit 1;

select ifnull (( select distinct salary from emp1 order by salary desc limit 1 offset 1), null ) ;


-- create orders table
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE
);


-- insert sample data into orders table
INSERT INTO orders (order_id, customer_id, order_date)
VALUES 
  (1, 101, '2022-01-01'),
  (2, 102, '2022-01-02'),
  (3, 103, '2022-01-03'),
  (4, 102, '2022-01-04'),
  (5, 101, '2022-01-05');

-- create customers table
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(50),
  customer_email VARCHAR(50)
);
select * from customers;

-- insert sample data into customers table
INSERT INTO customers (customer_id, customer_name, customer_email)
VALUES 
  (101, 'John Smith', 'john.smith@example.com'),
  (102, 'Jane Doe', 'jane.doe@example.com'),
  (103, 'Bob Johnson', 'bob.johnson@example.com');

-- select data from both tables using INNER JOIN
SELECT *
FROM orders
INNER JOIN customers
ON orders.customer_id = customers.customer_id;

use learnbayday1;


select customer.name from customers left join
orders where orders.id = null;


























