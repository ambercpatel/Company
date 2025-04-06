CREATE OR REPLACE TRIGGER trg_booking_requirements
BEFORE INSERT OR UPDATE ON booking
FOR EACH ROW
DECLARE
    v_room_category VARCHAR2(255);
BEGIN
    -- Get the room category
    SELECT room_category
    INTO v_room_category
    FROM room
    WHERE room_id = :NEW.room_id;
    
    -- Check decoration needs for Standard rooms
    IF v_room_category = 'Standard' AND :NEW.needs_decoration IS NULL THEN
        RAISE_APPLICATION_ERROR(
            -20004,
            'Decoration needs must be specified for Standard room bookings'
        );
    END IF;
    
    -- Check buffet needs for Executive rooms
    IF v_room_category = 'Executive' AND :NEW.needs_buffet IS NULL THEN
        RAISE_APPLICATION_ERROR(
            -20005,
            'Buffet needs must be specified for Executive room bookings'
        );
    END IF;
END;
/
