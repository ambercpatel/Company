ALTER TABLE booking ADD CONSTRAINT chk_booking_dates CHECK (end_datetime > start_datetime)
;