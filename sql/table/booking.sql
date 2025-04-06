CREATE TABLE booking (
  booking_id INT NOT NULL
, customer_id INT NOT NULL
, room_id INT NOT NULL
, booking_date DATE NOT NULL
, start_datetime DATE NOT NULL
, end_datetime DATE NOT NULL
, needs_decoration BOOLEAN
, needs_buffet BOOLEAN
);
