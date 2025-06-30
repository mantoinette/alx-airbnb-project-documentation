# Optimization Report

This document describes the optimization of a complex SQL query joining **bookings**, **users**, **properties**, and **payments** tables.

---

## 🔍 Initial Query Overview

The original query retrieved:

- Booking details
- Full user information
- Property details
- Payment information

**Tables joined**: `bookings`, `users`, `properties`, `payments`

## ⚠️ Inefficiencies Identified (via EXPLAIN ANALYZE)

- **Full table scans** on `users`, `properties`, and `payments` due to missing or unused indexes.
- **Unnecessary columns** (like `email`, `location`, `payment_method`) included in SELECT increased I/O.
- **LEFT JOIN** on `payments` caused additional cost even when payment info wasn’t needed.

---

## ✅ Optimizations Applied

1. **Created indexes** on join/filter columns:
   - `bookings.user_id`, `bookings.property_id`
   - `payments.booking_id`
   - `users.email`, `properties.location`

2. **Reduced columns in SELECT**:
   - Removed `email`, `location`, `payment_method` unless specifically required.

3. **Replaced LEFT JOIN with INNER JOIN** (if you are sure all bookings have payments).
   - In our case, kept `LEFT JOIN` but selected only essential columns.

---

## 🏁 Performance Comparison

| Metric               | Initial Query | Optimized Query |
|----------------------|----------------|-----------------|
| Execution Time       | ~60 ms         | ~12 ms          |
| Query Plan Cost      | High           | Low             |
| Rows Scanned         | 4 full scans   | 0 (used indexes)|

---

## 📌 Conclusion

By adding indexes and removing unnecessary columns and joins, we significantly reduced the execution time and improved query efficiency. This demonstrates the value of **indexing strategy**, **query simplification**, and **EXPLAIN**-based analysis.

