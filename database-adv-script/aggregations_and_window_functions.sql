-- 1. Total number of bookings made by each user
SELECT 
    users.id AS user_id,
    users.name,
    COUNT(bookings.id) AS total_bookings
FROM users
LEFT JOIN bookings ON users.id = bookings.user_id
GROUP BY users.id, users.name;

-- 2. Rank properties based on the total number of bookings (using window function)
SELECT 
    property_id,
    COUNT(*) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM bookings
GROUP BY property_id;
