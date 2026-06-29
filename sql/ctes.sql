-- Simple CTE
WITH HighValueBookings AS (
    SELECT
        booking_id,
        customer_id,
        total_amount
    FROM bookings
    WHERE total_amount > 100
)

SELECT *
FROM HighValueBookings;

-- Multiple CTEs

WITH ExpensiveEvents AS (
    SELECT
        event_id,
        event_name,
        ticket_price
    FROM events
    WHERE ticket_price > 150
),

CustomerBookings AS (
    SELECT
        b.booking_id,
        b.customer_id,
        b.event_id
    FROM bookings b
)

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    e.event_name,
    e.ticket_price
FROM CustomerBookings cb
JOIN customers c
ON cb.customer_id = c.customer_id
JOIN ExpensiveEvents e
ON cb.event_id = e.event_id;

-- Recursive CTE

WITH RECURSIVE BookingNumbers AS (

    SELECT 1 AS booking_number

    UNION ALL

    SELECT booking_number + 1
    FROM BookingNumbers
    WHERE booking_number < 10

)

SELECT *
FROM BookingNumbers;

-- CTE with Aggregation

WITH EventRevenue AS (

    SELECT
        event_id,
        SUM(total_amount) AS total_revenue
    FROM bookings
    GROUP BY event_id

)

SELECT
    e.event_name,
    er.total_revenue
FROM EventRevenue er
JOIN events e
ON er.event_id = e.event_id
ORDER BY er.total_revenue DESC;

-- CTE with JOIN

WITH BookingDetails AS (

    SELECT
        b.booking_id,
        c.first_name,
        c.last_name,
        e.event_name,
        v.venue_name,
        b.total_amount

    FROM bookings b

    JOIN customers c
        ON b.customer_id = c.customer_id

    JOIN events e
        ON b.event_id = e.event_id

    JOIN venues v
        ON e.venue_id = v.venue_id

)

SELECT *
FROM BookingDetails;