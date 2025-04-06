CREATE OR REPLACE TRIGGER trg_prevent_double_booking
BEFORE INSERT OR UPDATE ON booking
FOR EACH ROW
DECLARE
    v_count NUMBER;
BEGIN
    -- Check if the room is already booked for any overlapping time period
    SELECT COUNT(*)
    INTO v_count
    FROM booking
    WHERE room_id = :NEW.room_id
    AND booking_id != NVL(:OLD.booking_id, -1)  -- Exclude current booking when updating
    AND NOT (
        end_datetime <= :NEW.start_datetime OR  -- Existing booking ends before new booking starts
        start_datetime >= :NEW.end_datetime     -- Existing booking starts after new booking ends
    );
    
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(
            -20003, 
            'Room is already booked for this time period'
        );
    END IF;
END;
/
