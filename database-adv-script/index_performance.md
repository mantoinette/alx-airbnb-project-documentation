# Index Performance Report

This report summarizes the performance improvements achieved by adding indexes to high-usage columns in the **User**, **Booking**, and **Property** tables of the Airbnb database.

## Objective

To improve query performance by identifying and indexing columns that are frequently used in:
- `WHERE` clauses (e.g., filtering data)
- `JOIN` conditions (e.g., connecting tables)
- `ORDER BY` clauses (e.g., sorting)

## High-Usage Columns Identified

| Table      | Column         | Usage                    |
|------------|----------------|--------------------------|
| users      | user_id        | JOIN (primary key)       |
| users      | email          | WHERE, lookup            |
| bookings   | user_id        | WHERE, JOIN              |
| bookings   | property_id    | JOIN                     |
| bookings   | booking_date   | WHERE, ORDER BY          |
| properties | property_id    | JOIN (primary key)       |
| properties | location       | WHERE                    |
| properties | host_id        | JOIN                     |

## Indexes Created

```sql
-- Users
CREATE INDEX idx_users_email ON users(email);

-- Bookings
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_booking_date ON bookings(booking_date);

-- Properties
CREATE INDEX idx_properties_location ON properties(location);
CREATE INDEX idx_properties_host_id ON properties(host_id);
