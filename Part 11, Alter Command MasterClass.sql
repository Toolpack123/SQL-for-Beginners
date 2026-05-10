SELECT * FROM school.staffrecord;
Desc school.staffrecord;
Use school;
# 1.Expand the column width
Alter table staffrecord Modify Column Current_role varchar(500);

# 2. Changing a column name
Alter table staffrecord Rename Column Employee_ID to Staff_ID;

#3.Manage Constraints : 
-- Scenario1 : We can't have employees without salary
Alter table staffrecord Modify Column Salary Decimal(10,2) Not Null;
-- Scenario2: No two people share the same email id
Alter table staffrecord Modify Email Varchar(500);
Alter table staffrecord Add Constraint email_staff Unique(Email);
desc staffrecord;
-- Scenario 3: Ensuring our salary data stays within a logical business range (e.g., above 15,000).
Alter table staffrecord Add Constraint staff_salary Check (Salary<=15000);
SELECT * FROM INFORMATION_SCHEMA.CHECK_CONSTRAINTS 
WHERE CONSTRAINT_SCHEMA = 'school';
-- Scenarion4: Rename the entire table
Alter table staffrecord Rename to StaffRecord2026;
desc StaffRecord2026;
-- Scenario5: If i want to new hire toi start with IDs from 200 onwards
Alter table StaffRecord2026 auto_increment = 200;
select * from StaffRecord2026;
# Check the contraints 
Insert into staffrecord2026 values
(114, 'Rohan', 'Engineer', 'Rohan@gmail.com',100, '2026-10-5'); -- check constraint satisfied
Insert into staffrecord2026 values
(114, 'Rohan', 'Engineer', 'Rohan@gmail.com',100, '2026-10-5'); -- Duplicate email not allowd, Unique

Insert into staffrecord2026 values
(114, 'Rohan', 'Engineer', 'Rohan@gmail.com', '2026-10-5'); -- Salary can't be Null ,Not Null
select * from staffrecord2026;
Desc  staffrecord2026;
Alter Table staffrecord2026 Modify column Staff_ID INT Auto_increment Primary Key;
-- Uniquness & Fast Indexing
Delete from staffrecord2026 where Staff_ID = 114;
Insert into staffrecord2026 (FullName,Current_role,Email,Salary,Date_of_Joining)
values ('Ashi', 'Engineer', 'Ashi@gmail.com',90, '2026-10-5'); 
SET SQL_SAFE_UPDATES = 0;
Insert into staffrecord2026 (FullName,Current_role,Email,Salary,Date_of_Joining)
values ('Rashi', 'Engineer', 'Rashi@gmail.com',90, '2026-10-5'); 
-- We have to set Auto_increment after setting auto_increment and primary key to the column . 

-- THANK U







