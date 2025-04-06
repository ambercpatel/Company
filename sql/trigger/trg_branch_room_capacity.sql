CREATE OR REPLACE TRIGGER trg_branch_room_capacity
BEFORE INSERT OR DELETE ON room
FOR EACH ROW
DECLARE
    v_room_count NUMBER;
BEGIN
    IF INSERTING THEN
        -- Count existing rooms for this branch
        SELECT COUNT(*)
        INTO v_room_count
        FROM room
        WHERE branch_id = :NEW.branch_id;
        
        -- Check if adding this room would exceed 30
        IF v_room_count >= 30 THEN
            RAISE_APPLICATION_ERROR(-20001, 'Branch cannot have more than 30 rooms');
        END IF;
    ELSIF DELETING THEN
        -- Count existing rooms for this branch
        SELECT COUNT(*)
        INTO v_room_count
        FROM room
        WHERE branch_id = :OLD.branch_id;
        
        -- Check if removing this room would go below 5
        IF v_room_count <= 5 THEN
            RAISE_APPLICATION_ERROR(-20002, 'Branch must have at least 5 rooms');
        END IF;
    END IF;
END;
/
