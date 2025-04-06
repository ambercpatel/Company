ALTER TABLE booking ADD CONSTRAINT fk_booking_customer FOREIGN KEY (customer_id) 
    REFERENCES customer(customer_id)
;

ALTER TABLE booking ADD CONSTRAINT fk_booking_room FOREIGN KEY (room_id) 
    REFERENCES room(room_id)
;