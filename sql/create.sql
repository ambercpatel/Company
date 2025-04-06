/* Create Tables */
@@ table/booking.sql
@@ table/branch_supplier.sql
@@ table/branch.sql
@@ table/company.sql
@@ table/customer_type.sql
@@ table/customer.sql
@@ table/employee.sql
@@ table/room_category.sql
@@ table/room_size.sql
@@ table/room.sql
@@ table/supplier_product_type.sql
@@ table/supplier.sql

/* Add primary key constraints */
@@ constraint/pkey/booking.sql
@@ constraint/pkey/branch_supplier.sql
@@ constraint/pkey/branch.sql
@@ constraint/pkey/company.sql
@@ constraint/pkey/customer_type.sql
@@ constraint/pkey/customer.sql
@@ constraint/pkey/employee.sql
@@ constraint/pkey/room_category.sql
@@ constraint/pkey/room_size.sql
@@ constraint/pkey/room.sql
@@ constraint/pkey/supplier_product_type.sql
@@ constraint/pkey/supplier.sql

/* Add unique constraints */
@@ constraint/unique/branch.sql
@@ constraint/unique/company.sql
@@ constraint/unique/room.sql
@@ constraint/unique/supplier.sql

/* Add foreign key constraints */
@@ constraint/fkey/booking.sql
@@ constraint/fkey/branch_supplier.sql
@@ constraint/fkey/branch.sql
@@ constraint/fkey/customer.sql
@@ constraint/fkey/employee.sql
@@ constraint/fkey/room.sql

/* Add check constraints */
@@ constraint/check/booking.sql
@@ constraint/check/customer.sql
@@ constraint/check/room.sql

/* Add triggers */
@@ trigger/trg_booking_requirements.sql
@@ trigger/trg_booking_room_access.sql
@@ trigger/trg_branch_room_capacity.sql
@@ trigger/trg_check_branch_availability.sql
@@ trigger/trg_prevent_double_booking.sql

/* Insert reference data */
@@ data/company.sql
@@ data/customer_type.sql
@@ data/room_category.sql
@@ data/room_size.sql
@@ data/supplier_product_type.sql

COMMIT;
