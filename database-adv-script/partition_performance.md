# Partitioning Performance Report

## 📌 Objective

The **Booking** table is large and causes slow performance when querying by date. To address this, we partitioned the table by `checkin_date` (start_date), using **range-based partitioning per year**.

---

## 🛠️ Implementation Summary

- Created a new partitioned table `bookings_partitioned` using `PARTITION BY RANGE (checkin_date)`
- Created partitions for:
  - 2023 (`bookings_2023`)
  - 2024 (`bookings_2024`)
- Added indexes on `checkin_date` within each partition
- Used `EXPLAIN ANALYZE` to measure performance on a date-range query

---

## ⚙️ Performance Comparison

### Query Tested:

```sql
SELECT * FROM bookings_partitioned
WHERE checkin_date BETWEEN '2024-05-01' AND '2024-05-31';
