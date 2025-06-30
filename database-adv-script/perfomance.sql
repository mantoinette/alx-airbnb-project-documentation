-- ==============================================
-- Initial Query: Get full booking with joins
-- ==============================================

EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    b.booking_date,
    b.checkin_date,
    b.checkout_date,
    u.user_id,
    u.full_name,
    u.email,
    p.property_id,
    p.name AS property_name,
    p.location,
    pay.payment_id,
    pay.amount,
    pay.payment_method
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id;

-- ==============================================
-- After creating indexes in database_index.sql
-- ==============================================

-- You should already have these indexes:
-- idx_bookings_user_id, idx_bookings_property_id, idx_users_email, idx_properties_location, etc.

-- ==============================================
-- Refactored Optimized Query
-- ==============================================

EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    b.booking_date,
    b.checkin_date,
    b.checkout_date,
    u.full_name,
    p.name AS property_name,
    pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id;
