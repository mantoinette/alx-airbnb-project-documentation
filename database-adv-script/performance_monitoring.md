# Performance Monitoring and Optimization Report

This file contains SQL commands used to analyze and improve the performance of key queries in the Airbnb database system. It includes performance analysis using `EXPLAIN ANALYZE`, identifies inefficiencies, applies optimizations, and reports the results.

---

## 🔍 Step 1: Monitor Performance of Frequently Used Queries

### Query 1: Get all bookings by a specific user

```sql
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 123;
