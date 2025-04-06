ALTER TABLE branch_supplier ADD CONSTRAINT fk_branch_supplier_branch FOREIGN KEY (branch_id) 
    REFERENCES branch(branch_id)
;

ALTER TABLE branch_supplier ADD CONSTRAINT fk_branch_supplier_supplier FOREIGN KEY (supplier_id) 
    REFERENCES supplier(supplier_id)
;