CREATE TABLE room (
  room_id INT NOT NULL
, branch_id INT NOT NULL
, room_category VARCHAR2(255) NOT NULL
, room_number INT NOT NULL
, has_tv BOOLEAN NOT NULL
, has_internet BOOLEAN NOT NULL
);
