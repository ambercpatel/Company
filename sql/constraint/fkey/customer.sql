ALTER TABLE customer ADD CONSTRAINT fk_customer_customer_type FOREIGN KEY (customer_type) 
    REFERENCES customer_type(customer_type)
;