# JOIN Queries – ALX Airbnb Database

This folder contains SQL join queries that demonstrate how to use different types of JOINs in a relational database for the Airbnb clone project.

## 📌 Files
- `joins_queries.sql` – SQL queries using INNER JOIN, LEFT JOIN, and FULL OUTER JOIN.
- `README.md` – Explanation of each query and its purpose.

## 🔍 Queries Overview

### 1. INNER JOIN – Bookings and Users
Retrieves all bookings along with the user who made each booking. Excludes bookings that are not linked to any user.

### 2. LEFT JOIN – Properties and Reviews
Fetches all property listings and any reviews associated with them. Properties with no reviews are still included, with review fields set to `NULL`.

### 3. FULL OUTER JOIN – Users and Bookings
Lists all users and all bookings, even if there is no match between them. Ensures no data is left out.

# Subquery Examples – ALX Airbnb Database

This file includes examples of subqueries and correlated subqueries used to perform more complex filtering in SQL.

## 📄 Queries in `subqueries.sql`

### 1. Properties with Average Rating > 4.0
A subquery is used to compute the average rating per property, and the outer query selects only those properties with an average greater than 4.0.

### 2. Users with More Than 3 Bookings
A correlated subquery is used to count the number of bookings for each user and filter users who have made more than three bookings.

# Database Advanced Script: Aggregations and Window Functions

This directory contains SQL scripts demonstrating the use of **aggregation functions** and **window functions** on the Airbnb database.

## File: `aggregations_and_window_functions.sql`

This SQL script includes queries that:

- Calculate the total number of bookings made by each user using the `COUNT` function and `GROUP BY` clause.
- Rank properties based on the total number of bookings they have received using window functions like `RANK()`.

## How to Use

1. Ensure you have access to the Airbnb database schema with relevant tables such as `bookings`, `users`, and `properties`.
2. Run the SQL script `aggregations_and_window_functions.sql` in your SQL client or database environment.
3. Review the results to analyze user booking activity and property popularity.

## Concepts Covered

- Aggregation functions (`COUNT`, `SUM`, `AVG`, etc.)
- `GROUP BY` clause to group rows by specific columns
- Window functions such as `ROW_NUMBER()`, `RANK()`, and `DENSE_RANK()` to rank and partition data

## Requirements

- SQL environment compatible with window functions (e.g., PostgreSQL, MySQL 8+, SQL Server, Oracle)

---

If you want, I can help you write a more detailed or customized README based on your exact project! Would you like that?
