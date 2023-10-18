use arun;

select * from customers;

-- ASCII
select ASCII(customer_name) from customers;

-- char length
Select char_length(customer_name) from customers;

-- concat
select concat(first_name,"  ",last_name) from customers1;

-- Lower case
select lcase(first_name) from customers1;

-- uper case 
select ucase(first_name) from customers1;

-- length 
select length("Arun");

-- LOCATE(): This function is used to find the nth position of the given word in a string.
select locate("arun","The boy arun is good arun",1);
-- return the index no. of 1st letter of the string (9 in this case)
-- 1 means check from 1st string of the sentance
select locate("arun","The boy arun is good arun",10);
-- here i used 10 so that it start seraching  from 10th position 
-- i.e after first occurence of arun
-- so that it can locate the second occurence

-- LPAD(): This function is used to make the given string 
-- of the given size by adding the given symbol.
select lpad("oogle",7,'G');
-- op: GGogle
select rpad("Goo",6,'gle');
-- op: Google

-- ltrim , rtrim
select LTRIM('     geeks');

-- POSITION(): This function is used to find position of the 
 -- first occurrence of the given alphabet.
 SELECT POSITION('e' IN 'geeksforgeeks');

-- REPEAT(): This function is used to write the given string again 
 -- and again till the number of times mentioned.
SELECT REPEAT('geeks', 2);

-- STRCMP(): 
-- This function is used to compare 2 strings.
-- If string1 and string2 are the same, the STRCMP function will return 0.
-- If string1 is smaller than string2, the STRCMP function will return -1.
-- If string1 is larger than string2, the STRCMP function will return 1.
SELECT STRCMP('google.com', 'geeksforgeeks.com');

-- SUBSTR(): 
-- This function is used to find a sub string from the a string from the given position.
select SUBSTR('geeksforgeeks', 1, 5);

-- Trim
select Trim("  Arun  ");


SELECT CURRENT_TIMESTAMP;

CREATE TABLE Orders__ (
  OrderID INT NOT NULL AUTO_INCREMENT,
  OrderNumber VARCHAR(255) NOT NULL,
  OrderedAt DATETIME NOT NULL,
  CustomerID INT NOT NULL,
  PRIMARY KEY (OrderID)
);

INSERT INTO Orders__ (OrderNumber, OrderedAt, CustomerID)
VALUES ('1234567890', '2023-09-15 00:00:00', 12345),
       ('9876543210', '2023-09-14 23:59:59', 98765),
       ('0123456789', '2023-09-14 23:59:58', 01234);
select * from Orders__;

-- DATE(): This function extracts the date part from a datetime expression. For example, 
-- the following query will extract the date from the OrderDate column:
-- if the col habe date and time bith then it extract date only
select DATE(OrderedAt) as orderDate
from Orders__;

-- MONTH()
select month(OrderedAt) from Orders__;

-- year()
select year(OrderedAt) from Orders__;

-- DAY
select Day(OrderedAT) from Orders__;

-- weekday
select weekday(OrderedAt) from orders__;

-- Hour minute and second
select hour(OrderedAt), minute(OrderedAt), second(OrderedAt) from orders__;

-- DateAdd : This function adds a specified number of days, months, years, 
-- hours, minutes, or seconds to a date expression. 
-- For example, the following query will add 30 days to the OrderDate column:

select DATE_ADD(OrderedAt,interval 10 day) as o from orders__;











































































