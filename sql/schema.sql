--customers table--
customer_id (PK)
full_name
email
phone
registration_date
________________________________________
--events table--
event_id (PK)
event_name
event_type
venue
event_date
ticket_price

--bookings table--
booking_id (PK)
customer_id (FK)
event_id (FK)
booking_date
number_of_tickets
total_amount
status

--payments table--
payment_id (PK)
booking_id (FK)
payment_date
payment_method
payment_status
amount_paid

--venues table--
venue_id (PK)
venue_name
city
capacity
Then Events references venue_id.