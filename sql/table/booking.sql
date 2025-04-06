CREATE TABLE booking (
  booking_id INT
, customer_id INT
, room_id INT
, booking_date DATE NOT NULL
, start_datetime DATE NOT NULL
, end_datetime DATE NOT NULL
, needs_decoration BOOLEAN NOT NULL
, needs_buffet BOOLEAN NOT NULL
);
