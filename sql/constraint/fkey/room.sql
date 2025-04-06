ALTER TABLE room ADD CONSTRAINT fk_room_branch FOREIGN KEY (branch_id) 
    REFERENCES branch(branch_id)
;

ALTER TABLE room ADD CONSTRAINT fk_room_category FOREIGN KEY (room_category_id) 
    REFERENCES room_category(room_category_id)
;
