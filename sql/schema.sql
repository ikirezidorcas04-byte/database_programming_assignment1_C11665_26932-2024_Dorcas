--customers table
CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone VARCHAR(100),
  registration_date DATE DEFAULT
  CURRENT_DATE
);
________________________________________
--events table
CREATE TABLE events (
  event_id SERIAL PRIMARY KEY,
  event_name VARCHAR(100) NOT NULL,
  event_type VARCHAR(50),
  event_date DATE NOT NULL,
  venue_id INT NOT NULL,
  ticket_price NUMERIC(10,2) NOT NULL
);

--bookings table
CREATE TABLE bookings (
  booking_id SERIAL PRIMARY KEY,
  customer_id INT NOT NULL,
  event_id INT NOT NULL,
  booking_date DATE DEFAULT
CURRENT_DATE,  
  number_of_tickets INT NOT NULL,
  total_amount NUMERIC(10,2) NOT NULL,

  CONSTRAINT fk_booking_customer
    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
	ON DELETE CASCADE,

  CONSTRAINT fk_booking_event
    FOREIGN KEY (event_id)
    REFERENCES events(event_id)
	ON DELETE CASCADE
);

--payments table
CREATE TABLE payments (
  payment_id SERIAL PRIMARY KEY,
  booking_id INT NOT NULL,
  payment_date DATE DEFAULT
CURRENT_DATE,  
  amount_paid NUMERIC(10,2) NOT NULL,
  payment_method VARCHAR(30),
  payment_status VARCHAR(20),

  CONSTRAINT fk_payment_booking
    FOREIGN KEY (booking_id)
    REFERENCES bookings(booking_id)
	ON DELETE CASCADE
);

--venues table
CREATE TABLE venuez (
  venue_id SERIAL PRIMARY KEY,
  venue_name VARCHAR(100) NOT NULL,
  location VARCHAR(100) NOT NULL,
  capacity INT NOT NULL,
  rental_price NUMERIC(10,2) NOT NULL
);