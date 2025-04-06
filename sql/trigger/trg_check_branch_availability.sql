CREATE OR REPLACE TRIGGER trg_check_branch_availability
BEFORE INSERT OR UPDATE ON booking
FOR EACH ROW
DECLARE
    v_branch_id NUMBER;
    v_total_rooms NUMBER;
    v_booked_rooms NUMBER;
BEGIN
    -- Get the branch_id for this room
    SELECT branch_id
    INTO v_branch_id
    FROM room
    WHERE room_id = :NEW.room_id;
    
    -- Get total number of rooms in the branch
    SELECT COUNT(*)
    INTO v_total_rooms
    FROM room
    WHERE branch_id = v_branch_id;
    
    -- Count how many rooms are already booked in this branch for the given time period
    SELECT COUNT(DISTINCT b.room_id)
    INTO v_booked_rooms
    FROM booking b
    JOIN room r ON b.room_id = r.room_id
    WHERE r.branch_id = v_branch_id
    AND b.booking_id != NVL(:OLD.booking_id, -1)  -- Exclude current booking when updating
    AND NOT (
        b.end_datetime <= :NEW.start_datetime OR    -- Existing booking ends before new booking starts
        b.start_datetime >= :NEW.end_datetime       -- Existing booking starts after new booking ends
    );
    
    -- If this booking would exceed the total rooms available
    IF v_booked_rooms >= v_total_rooms THEN
        RAISE_APPLICATION_ERROR(
            -20006,
            'No rooms available in this branch for the specified time period'
        );
    END IF;
END;
/
