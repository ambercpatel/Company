ALTER TABLE branch ADD CONSTRAINT fk_branch_company FOREIGN KEY (company_id) 
    REFERENCES company(company_id)
;
