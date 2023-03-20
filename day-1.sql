-- SQL is case-insensitive
-- /*
-- We will follow
-- UPPERCASR: Keywords
-- lowercase: Non-keywords
-- */


-- SHOW TABLES;

-- USE store;

-- SELECT *
-- FROM customers;

-- SELECT*
-- FROM customers
-- ORDER BY first_name ASC;

-- -- ORDER BY <column_name> DESC for descending order
-- SELECT*
-- FROM customers
-- ORDER BY last_name DESC;

-- USE exercise_hr;

-- QUESTION 1
-- SELECT first_name, last_name,employee_id, salary
-- FROM employees
-- ORDER BY first_name asc;

-- USE store;

-- ORDER BY <column_name_1> ASC/DESC, <column_name_2> ASC/DESC, <column_name_3> ASC/desc
-- SELECT*
-- FROM customers
-- ORDER BY last_name desc, birth_date desc;

-- SELECT 1,2;

-- SELECT 1 + 2;

-- select 1 * 2;

-- select 1 - 2;

-- select 100 - 50 / 2;

-- select 100 - 50 / 2 as value;

-- SELECT*
-- from customers;

-- select first_name
-- from customers;

-- select first_name, last_name, points
-- from customers;

-- /*
-- SELECT <column_1>,<column_2>...<column_n>
-- FROM <tabe_name>

-- SELECT*  --For all columns.
-- FROM <table_name>;
-- */

-- select first_name, last_name, points, points * 1.1 as 'discount_factor'
-- from customers;

-- select birth_date
-- from customers;

-- /*
-- DATA types:
-- strings, numbers, dates
-- */

-- SELECT DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(),birth_date)), '%Y') + 0 AS age
-- from customers;

-- select distinct state
-- from customers;

-- Q1
-- select 171*214+625 AS value;

-- USE exercise_hr;

-- Q2
-- SELECT first_name "First Name",  last_name "Last Name" 
-- 	FROM employees;

-- Q3
-- SELECT first_name, last_name, salary, salary*.15 PF 
-- FROM employees;

-- Q4
-- SELECT DISTINCT department_id 
-- FROM employees;

-- USE store;

-- SELECT*
-- FROM customers
-- WHERE state = 'FL';

-- Comparison operrators:
-- >
-- >=
-- <
-- <=
-- != or <>

-- SELECT*
-- FROM customers
-- WHERE points > 3000;

-- SELECT*
-- FROM customers
-- WHERE points > '3000';

-- SELECT*
-- FROM customers
-- WHERE birth_date >= '1990-01-01';

-- SELECT*
-- FROM customers 
-- WHERE points <= '1000';

-- SELECT*
-- FROM customers 
-- WHERE birth_date >= '1990-01-01' AND state = 'FL';

-- SELECT*
-- FROM customers 
-- WHERE birth_date >= '1990-01-01' AND points > '3000';

-- SELECT*
-- FROM customers 
-- WHERE birth_date >= '1990-01-01' OR points > '3000';

-- born after 1989 or points > 3000 and living in Virginia (VA)
-- SELECT*
-- FROM customers 
-- WHERE birth_date > '1990-01-01' OR points > '3000' AND state = 'VA';

-- born after 1989 or points < 3000 and living in Virginia (VA)
-- SELECT*
-- FROM customers 
-- WHERE birth_date > '1990-01-01' OR points < '4000' AND state = 'VA';

-- points < 4000 or birth_date after 1989 and living in Virginia (VA)
-- SELECT*
-- FROM customers 
-- WHERE points < 4000 OR birth_date >= '1989-01-01' AND state = 'VA';

-- points < 4000 and born after 1989 or living in Virginia (VA)
-- SELECT*
-- FROM customers 
-- WHERE points < 4000 AND birth_date >= '1989-01-01' OR state = 'VA';

-- points < 4000 and born after 1989 or living in Virginia (VA)
-- SELECT*
-- FROM customers 
-- WHERE (points < 4000 AND birth_date > '1989-01-01') OR state = 'VA';
--  
-- ORDER of the logical operators
-- 1. AND
-- 2. OR
-- 3. NOT 

-- USE exercise_hr;

-- SELECT first_name, last_name, department_ID
-- FROM employees
-- WHERE department_ID = 30 OR department_ID = 100
-- ORDER BY department_ID ASC;

-- USE store;

-- SELECT*
-- FROM customers
-- WHERE state = 'FL' OR state = 'VA' OR state = 'GA';

-- USE store;

-- SELECT*
-- FROM customers
-- WHERE state IN ('FL', 'VA', 'GA');

-- USE store;

-- SELECT*
-- FROM products
-- WHERE quantity_in_stock IN (49, 38, 72);

-- customers whose points are in the range of 3000 to 10000. 
-- (range: points start from 3000 and end in 10000)

USE store;

SELECT * 
FROM customers
WHERE points >= 3000 AND points <= 10000;

SELECT * 
FROM customers
WHERE points BETWEEN 3000 AND 10000;

-- Return customers born
-- between 1/1/1990 and 1/1/2000

SELECT*
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';

SELECT*
FROM customers
WHERE birth_date NOT BETWEEN '1990-01-01' AND '2000-01-01';

-- Get the customers whose
-- 1. addresses contain TRAIL or AVENUE
-- 2. phone numbers end with 9
-- 3. phone numbers do not end with 9

SELECT*
FROM customers
WHERE last_name LIKE 'MacCaffrey';

-- last name contains 'age'
-- find the word spelling age like " Bo age y" = 'Boagey'
SELECT*
FROM customers
WHERE last_name LIKE '%age%';

-- last name contains 'y'
-- find the word spelling all last_name end with y like "MacCaffre y,  Boage y, Naseb y"

SELECT*
FROM customers
WHERE last_name LIKE '%y';

-- last name contains 'b'
-- find the word spelling all last_name start with b like "B rushfield, B oagey, B etchley"

SELECT*
FROM customers
WHERE last_name LIKE 'b%';

SELECT*
FROM customers
WHERE last_name LIKE '_y';

SELECT*
FROM customers
WHERE last_name LIKE '_____y';


/*
% - any number of characters
_ - single charater
*/
-- all customers living in a state ending in A.

SELECT*
FROM customers
WHERE state LIKE '%A';

SELECT*
FROM customers
WHERE state LIKE '_A';

-- last name has 6 letters, starts with b and ends with y

SELECT*
FROM customers
WHERE last_name LIKE 'b____y';

-- word starting with b and ending with y.
SELECT*
FROM customers
WHERE last_name LIKE 'b%' AND last_name LIKE '%Y';

-- REGEXP (Regular Expression) last name containing field word.

SELECT*
FROM customers
WHERE last_name REGEXP 'field';

SELECT*
FROM customers
WHERE last_name REGEXP 'age';

SELECT*
FROM customers
WHERE last_name REGEXP '^Mac';

SELECT*
FROM customers
WHERE last_name REGEXP 'field$';

-- | symbole is a OR operatore.

SELECT*
FROM customers
WHERE last_name REGEXP 'field$|^Mac';

SELECT*
FROM customers
WHERE last_name REGEXP 'field$|^Mac|rose';

-- first names are ELKA or AMBUR

SELECT*
FROM customers
WHERE last_name REGEXP 'ELKA|$AMBUR';

-- last names end with EY or ON

SELECT*
FROM customers
WHERE last_name REGEXP 'EY|ON';

-- last names start with MY or contains SE

SELECT*
FROM customers
WHERE last_name REGEXP 'MY|SE';

-- last names contains B followed by R or U.

SELECT*
FROM customers
WHERE last_name REGEXP 'B|R|U';

SELECT*
FROM customers
WHERE last_name REGEXP 'age';

/*
^ (cart) - start with
$ - ends with
| (pipe) - logical OR
[.] - set
*/

-- last name contains ae, be, ce, de, ee, fe, ge, he

SELECT*
FROM customers
WHERE last_name REGEXP 'ae|be|ce|de|ee|fe|ge|he';
-- (OR)
SELECT*
FROM customers
WHERE last_name REGEXP '[abcdefgh]e';
-- (OR)
SELECT*
FROM customers
WHERE last_name REGEXP '[a-h]e';

SELECT*
FROM customers
WHERE last_name REGEXP '[g-m]e';

-- We want to find last_names with 6 characters 

SELECT*
FROM customers
WHERE last_name regexp '^.{6}$';

-- In REGEXP to used % in the LIKE query
-- .* - %
-- . - _ in LIKE

USE exersise;

SELECT*
FROM employees
WHERE last_name regexp 'b.*[ru]';

USE store;
SELECT*
FROM customers
WHERE phone;

-- Phone number null
SELECT*
FROM customers
WHERE phone is null;

-- Phone number not null
SELECT*
FROM customers
WHERE phone is not null;

-- Get top 3 customers
SELECT*
FROM customers
LIMIT 3;

-- Get customers on Page 2 skip first 3 get 4-6
SELECT*
FROM customers
LIMIT 3,3;

-- Use EXPLAIN 
-- EXPLAIN
-- SELECT*
-- FROM customers;

-- Use exersise_hr
USE exercise_hr;
EXPLAIN
SELECT*
FROM employees
WHERE first_name = 'Lex';

SELECT*
FROM employees
WHERE employee_Id = 102;

SELECT*
FROM employees
WHERE last_name = 'De Haan';

-- EXPLAIN
-- SELECT*
-- FROM employees
-- WHERE last_name = 'De Haan';
USE exercise_hr;
SELECT COUNT(*) AS 'numbers of employees'
FROM employees;

CREATE DATABASE IF NOT EXISTS venom_blog_project;
USE venom_blog_project;
/*Syntax for creating table:
CREATE TABLE  tablename
column1 COLUMN1-DATATYPE(size) CONSTRAINTS,
column2 COLUMN2-DATATYPE(size) CONSTRAINTS,
);
*/
CREATE TABLE IF NOT EXISTS user(
username VARCHAR(50) PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
password VARCHAR(50),
dob DATE,
phone VARCHAR(20)
);