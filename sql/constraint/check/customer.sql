ALTER TABLE customer ADD CONSTRAINT chk_business_invoice
CHECK (
    NOT (customer_type = 'Standard' AND pay_by_invoice)
);
