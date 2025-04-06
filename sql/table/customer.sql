CREATE TABLE customer (
  customer_id INT NOT NULL
, customer_type VARCHAR2(255) NOT NULL
, first_name VARCHAR2(50) NOT NULL
, last_name VARCHAR2(50) NOT NULL
, email VARCHAR2(255) NOT NULL
, phone VARCHAR2(20) NOT NULL
, pay_by_invoice BOOLEAN NOT NULL
);
