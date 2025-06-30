-- ============================
-- Partitioning the bookings table by start_date (checkin_date)
-- ============================

-- Step 1: Create parent partitioned table
DROP TABLE IF EXISTS bookings_partitioned CASCADE;

CREATE TABLE bookings_partitioned (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    booking_date DATE,
    checkin_date DATE NOT NULL,
    checkout_date DATE,
    payment_id INT
) PARTITION BY RANGE (checkin_date);

-- Step 2: Create child partitions by year
CREATE TABLE bookings_2023 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- Add index on checkin_date for each partition
CREATE INDEX idx_checkin_2023 ON bookings_2023(checkin_date);
CREATE INDEX idx_checkin_2024 ON bookings_2024(checkin_date);

-- Step 3: Insert test data (optional example)
-- INSERT INTO bookings_partitioned (...) VALUES (...);

-- Step 4: Test performance of date-range query
EXPLAIN ANALYZE
SELECT * FROM bookings_partitioned
WHERE checkin_date BETWEEN '2024-05-01' AND '2024-05-31';
