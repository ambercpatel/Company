ALTER TABLE employee ADD CONSTRAINT fk_employee_branch FOREIGN KEY (branch_id) 
    REFERENCES branch(branch_id)
;
