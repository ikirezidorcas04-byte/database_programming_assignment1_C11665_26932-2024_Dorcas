-- ROW_NUMBER()
SELECT
    booking_id,
    customer_id,
    total_amount,
    ROW_NUMBER() OVER (ORDER BY total_amount DESC) AS row_num
FROM bookings;

-- RANK()
SELECT
    event_id,
    event_name,
    ticket_price,
    RANK() OVER (ORDER BY ticket_price DESC) AS event_rank
FROM events;

-- DENSE_RANK()
SELECT
    event_id,
    event_name,
    ticket_price,
    DENSE_RANK() OVER (ORDER BY ticket_price DESC) AS dense_rank
FROM events;

-- PERCENT_RANK()
SELECT
    booking_id,
    total_amount,
    PERCENT_RANK() OVER (ORDER BY total_amount) AS percent_rank
FROM bookings;

-- SUM() OVER()
SELECT
    booking_id,
    total_amount,
    SUM(total_amount) OVER (ORDER BY booking_id) AS running_total
FROM bookings;

-- AVG() OVER()
SELECT
    booking_id,
    total_amount,
    AVG(total_amount) OVER () AS average_booking
FROM bookings;

-- MIN() OVER()
SELECT
    booking_id,
    total_amount,
    MIN(total_amount) OVER () AS minimum_booking
FROM bookings;

-- LAG()
SELECT
    booking_id,
    total_amount,
    LAG(total_amount) OVER (ORDER BY booking_id) AS previous_booking
FROM bookings;

-- LEAD()
SELECT
    booking_id,
    total_amount,
    LEAD(total_amount) OVER (ORDER BY booking_id) AS next_booking
FROM bookings;

-- NTILE()
SELECT
    booking_id,
    total_amount,
    NTILE(4) OVER (ORDER BY total_amount DESC) AS quartile
FROM bookings;

-- CUME_DIST()
SELECT
    booking_id,
    total_amount,
    CUME_DIST() OVER (ORDER BY total_amount) AS cumulative_distribution
FROM bookings;