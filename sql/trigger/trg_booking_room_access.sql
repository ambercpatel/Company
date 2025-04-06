CREATE OR REPLACE TRIGGER trg_booking_room_access
BEFORE INSERT OR UPDATE ON booking
FOR EACH ROW
DECLARE
    v_customer_type VARCHAR2(255);
    v_room_category VARCHAR2(255);
BEGIN
    -- Get the customer type for this booking
    SELECT customer_type
    INTO v_customer_type
    FROM customer
    WHERE customer_id = :NEW.customer_id;
    
    -- Get the room category for this booking
    SELECT room_category
    INTO v_room_category
    FROM room
    WHERE room_id = :NEW.room_id;
    
    -- Standard customers can only book standard rooms
    IF v_customer_type = 'Standard' AND v_room_category = 'Executive' THEN
        RAISE_APPLICATION_ERROR(
            -20003, 
            'Standard customers can only book Standard rooms'
        );
    END IF;
    
    -- Business customers can book any room type (no restriction needed)
END;
/
