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
