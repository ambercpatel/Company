ALTER TABLE room ADD CONSTRAINT fk_room_branch FOREIGN KEY (branch_id) 
    REFERENCES branch(branch_id)
;

ALTER TABLE room ADD CONSTRAINT fk_room_category FOREIGN KEY (room_category) 
    REFERENCES room_category(room_category)
;

ALTER TABLE room ADD CONSTRAINT fk_room_size FOREIGN KEY (room_size) 
    REFERENCES room_size(room_size)
;
