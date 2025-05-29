📘 SQL-JOURNEY
Welcome to thegreatmsr SQL-JOURNEY – a structured, beginner-friendly SQL guide with practical examples. This repository contains .sql files, each focused on a core SQL concept, written in the right learning order.



🗂️ SQL Files in Learning Order (with Detailed Explanations & Examples)
1. WHERE, CREATE.sql 🏗️
Concepts: CREATE TABLE, WHERE clause

Use: Define new tables and filter data based on conditions

Example:


CREATE TABLE employees (
  id INT,
  name VARCHAR(50),
  age INT
);

SELECT * FROM employees WHERE age > 30;
2. CREATE, DROP, TABLE MAKING.sql 🧱
Concepts: CREATE TABLE, DROP TABLE

Use: Create and delete tables, understand column constraints

Example:


DROP TABLE IF EXISTS employees;

CREATE TABLE departments (
  dept_id INT,
  dept_name VARCHAR(50)
);
3. NOT NULL, INSERT INTO TABLE.sql ✍️
Concepts: NOT NULL, INSERT INTO

Use: Prevent empty values in important columns; add new data into tables

Example:


CREATE TABLE students (
  id INT NOT NULL,
  name VARCHAR(50) NOT NULL
);

INSERT INTO students (id, name) VALUES (1, 'Manav');
4. PRIMARY KEY.sql 🔑
Concepts: PRIMARY KEY

Use: Enforce uniqueness on a column like id

Example:


CREATE TABLE users (
  user_id INT PRIMARY KEY,
  username VARCHAR(50)
);
5. AUTO INCREMENT AND ALIAS.sql 🔄
Concepts: AUTO_INCREMENT, AS (alias)

Use: Automatically increase IDs, rename columns temporarily

Example:


CREATE TABLE orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  amount DECIMAL(10, 2)
);

SELECT amount AS total_price FROM orders;
6. DECIMAL DATATYPES.sql 💰
Concepts: DECIMAL(p, s)

Use: Store precise decimal values (e.g., money, percentages)

Example:


CREATE TABLE products (
  price DECIMAL(8,2)
);
7. BETWEEN.sql 🎯
Concepts: BETWEEN

Use: Filter data within a range (numbers, dates, etc.)

Example:


SELECT * FROM students WHERE age BETWEEN 18 AND 22;
8. GROUP BY ORDER BY.sql 📊
Concepts: GROUP BY, ORDER BY, aggregation (SUM, AVG, COUNT)

Use: Group and sort data

Example:


SELECT dept_id, COUNT(*) 
FROM employees 
GROUP BY dept_id 
ORDER BY COUNT(*) DESC;
9. MAX MIN SUB QUERIES.sql 🧠
Concepts: MAX, MIN, subqueries

Use: Retrieve extreme values and nested query results

Example:


SELECT MAX(salary) FROM employees;

SELECT name FROM employees WHERE salary = (
  SELECT MAX(salary) FROM employees
);
10. Joins.sql 🔗
Concepts: INNER JOIN, LEFT JOIN, RIGHT JOIN

Use: Combine data from multiple tables using foreign keys

Example:


SELECT o.order_id, c.customerName 
FROM orders o 
JOIN customers c ON o.customer_id = c.customer_id;
11. ALTER.sql 🛠️
Concepts: ALTER TABLE

Use: Add, modify, or remove columns or constraints after table creation

Example:


ALTER TABLE employees ADD email VARCHAR(100);

ALTER TABLE employees DROP COLUMN age;
