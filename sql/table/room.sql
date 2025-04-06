CREATE TABLE room (
  room_id INT PRIMARY KEY
, branch_id INT NOT NULL
, room_category VARCHAR2(255) NOT NULL
, room_number INT NOT NULL
, room_size INT NOT NULL
, has_tv BOOLEAN NOT NULL
, has_internet BOOLEAN NOT NULL
);
