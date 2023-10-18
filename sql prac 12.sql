use learnbayday1;

desc customers;

select * from customers;

delete from customers where customer_id = null;

select * from customers order by customer_id DESC;

create table cust (cust_id int(11), name varchar(20), age int(10));

insert into cust values (101, "simba", 26);
insert into cust values (103, "shree", 29);
insert into cust values (111, "rohit", 35);

select * from cust

union

select * from customers;

select * from olympic;

select sqrt(age),age from olympic;
select rand() from olympic;

select left(name,2) as left_name,name from olympic;











