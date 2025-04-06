-- Drop all check constraints
BEGIN
  FOR r IN (SELECT constraint_name, table_name FROM user_constraints WHERE constraint_type = 'C') LOOP
    EXECUTE IMMEDIATE 'ALTER TABLE ' || r.table_name || ' DROP CONSTRAINT ' || r.constraint_name;
  END LOOP;
END;
/

-- Drop all foreign key constraints
BEGIN
  FOR r IN (SELECT constraint_name, table_name FROM user_constraints WHERE constraint_type = 'R') LOOP
    EXECUTE IMMEDIATE 'ALTER TABLE ' || r.table_name || ' DROP CONSTRAINT ' || r.constraint_name;
  END LOOP;
END;
/

-- Drop all unique key constraints
BEGIN
  FOR r IN (SELECT constraint_name, table_name FROM user_constraints WHERE constraint_type = 'U') LOOP
    EXECUTE IMMEDIATE 'ALTER TABLE ' || r.table_name || ' DROP CONSTRAINT ' || r.constraint_name;
  END LOOP;
END;
/

-- Drop all primary key constraints
BEGIN
  FOR r IN (SELECT constraint_name, table_name FROM user_constraints WHERE constraint_type = 'P') LOOP
    EXECUTE IMMEDIATE 'ALTER TABLE ' || r.table_name || ' DROP CONSTRAINT ' || r.constraint_name;
  END LOOP;
END;
/

-- Drop all triggers
BEGIN
  FOR r IN (SELECT trigger_name FROM user_triggers) LOOP
    EXECUTE IMMEDIATE 'DROP TRIGGER ' || r.trigger_name;
  END LOOP;
END;
/

-- Drop all tables
BEGIN
  FOR r IN (SELECT table_name FROM user_tables) LOOP
    EXECUTE IMMEDIATE 'DROP TABLE ' || r.table_name || ' CASCADE CONSTRAINTS';
  END LOOP;
END;
/
