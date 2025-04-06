ALTER TABLE room ADD CONSTRAINT chk_executive_facilities 
CHECK (
    (room_category != 'Executive') OR 
    (room_category = 'Executive' AND has_tv AND has_internet)
);
