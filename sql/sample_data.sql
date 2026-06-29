-- ===========================================
-- INSERT INTO CUSTOMERS
-- ===========================================

INSERT INTO customers (first_name, last_name, email, phone)
VALUES
('John', 'Doe', 'john.doe@gmail.com', '0788123456'),
('Alice', 'Smith', 'alice.smith@gmail.com', '0788234567'),
('Brian', 'Johnson', 'brian.johnson@gmail.com', '0788345678'),
('Grace', 'Uwase', 'grace.uwase@gmail.com', '0788456789'),
('Kevin', 'Mugisha', 'kevin.mugisha@gmail.com', '0788567890');

-- ===========================================
-- INSERT INTO VENUES
-- ===========================================

INSERT INTO venues (venue_name, location, capacity, rental_price)
VALUES
('Kigali Convention Centre', 'Kigali', 5000, 5000.00),
('BK Arena', 'Kigali', 10000, 10000.00),
('Amahoro Stadium', 'Kigali', 45000, 20000.00),
('Huye Cultural Center', 'Huye', 1500, 2500.00),
('Musanze Hall', 'Musanze', 1200, 2000.00);

-- ===========================================
-- INSERT INTO EVENTS
-- ===========================================

INSERT INTO events (event_name, event_type, event_date, venue_id, ticket_price)
VALUES
('Tech Conference 2026', 'Conference', '2026-07-15', 1, 120.00),
('Music Festival', 'Concert', '2026-08-10', 2, 80.00),
('Football Final', 'Sports', '2026-09-20', 3, 150.00),
('Business Expo', 'Exhibition', '2026-10-05', 1, 100.00),
('Cultural Night', 'Entertainment', '2026-11-12', 4, 60.00);

-- ===========================================
-- INSERT INTO BOOKINGS
-- ===========================================

INSERT INTO bookings (customer_id, event_id, booking_date, number_of_tickets, total_amount)
VALUES
(1, 1, '2026-06-20', 2, 240.00),
(2, 2, '2026-06-21', 4, 320.00),
(3, 3, '2026-06-22', 1, 150.00),
(4, 4, '2026-06-23', 3, 300.00),
(5, 5, '2026-06-24', 5, 300.00),
(1, 2, '2026-06-25', 2, 160.00),
(2, 3, '2026-06-26', 2, 300.00),
(3, 1, '2026-06-27', 1, 120.00);

-- ===========================================
-- INSERT INTO PAYMENTS
-- ===========================================

INSERT INTO payments (booking_id, payment_date, amount_paid, payment_method, payment_status)
VALUES
(1, '2026-06-20', 240.00, 'Credit Card', 'Completed'),
(2, '2026-06-21', 320.00, 'Mobile Money', 'Completed'),
(3, '2026-06-22', 150.00, 'Cash', 'Completed'),
(4, '2026-06-23', 300.00, 'Bank Transfer', 'Completed'),
(5, '2026-06-24', 300.00, 'Credit Card', 'Pending'),
(6, '2026-06-25', 160.00, 'Mobile Money', 'Completed'),
(7, '2026-06-26', 300.00, 'Cash', 'Completed'),
(8, '2026-06-27', 120.00, 'Credit Card', 'Pending');