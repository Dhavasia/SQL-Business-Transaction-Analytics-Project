**SQL Business & Transaction Analytics Project**
**Overview**

This project demonstrates practical SQL concepts through real-world scenarios including employee records, e-commerce transactions, and customer data management. It integrates advanced SQL functionalities such as Common Table Expressions (CTEs), aggregation, CASE conditions, and data classification — designed for business reporting and decision-making.

**Objectives**

Build structured databases for employees and customer transactions.

Analyze transaction trends and customer spending patterns.

Implement SQL features like GROUP BY, HAVING, and CASE statements.

Showcase clean data design for business intelligence queries.

**1. Database Setup**
1️⃣ **ESR Database** (Employee Management)

Contains employee details such as name, role, and salary.
Highlights include:

Creating tables with meaningful attributes.

Filtering high-paid employees into a new table.

Using temporary tables for quick analytical tasks.

Utilizing CTEs for salary-based data extraction.

**Key Queries:**

CREATE TABLE employee (...);
SELECT * FROM employee WHERE salary >= 50000;
WITH high_salary_cte AS (
  SELECT sno, name, salary FROM employee WHERE salary >= 50000
)
SELECT * FROM high_salary_cte;

2️⃣ **OLA Database** (Customer Transactions)

Simulates an online sports retail environment.
Each transaction record includes device type, customer info, product purchased, payment status, and transaction amount.

**Key Analytical Queries:**

Counting pending and completed transactions

Summing total revenue by login_device

Classifying customers by spending category

SELECT login_device, SUM(amount) AS total_revenue
FROM customer_transactions
GROUP BY login_device
HAVING SUM(amount) >= 30000;

3️⃣ **Customer Data Table**

A customer dataset that focuses on handling missing information (NULL values) and prioritizing available contact methods.

**Logic Example:**

SELECT name,
CASE 
  WHEN phone_number IS NULL THEN email
  ELSE phone_number
END AS contact
FROM customers;


This ensures every customer can be reached through at least one available contact field.

**Key SQL Concepts Demonstrated**

DDL: CREATE DATABASE, CREATE TABLE

DML: INSERT, UPDATE, DELETE

DQL: SELECT, WHERE, GROUP BY, HAVING

CTE (Common Table Expressions): Simplifies complex queries

Temporary Tables: For session-based computations

CASE Statements: For classification and decision logic

NULL Handling: Ensures data completeness and reliability

**Insights & Results**

Identified high-paying employees earning above ₹50,000.

Calculated total sales and categorized spenders into High, Medium, and Low brackets.

Filtered device-based revenue (Laptop, Mobile, Tablet) for performance tracking.

Demonstrated efficient use of SQL for analytical reporting.

