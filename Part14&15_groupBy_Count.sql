Use school;
select * from staffrecord2026;
-- 1. COUNT(*) : 
-- Count total number of rows
select count(*) from staffrecord2026;
-- 2.COUNT(column_name) : 
-- Count total names from a table 
select count(FullName) from 
staffrecord2026;

-- 3. GROUPBY with COUNT(*)
-- 1. Single Grouping : 
-- Har role ka total staff count karo
SELECT Current_role, COUNT(*) as Total_Staff
FROM staffrecord2026
GROUP BY Current_role;
-- 2. The "Double Grouping"
-- Mujhe ye jan-na hai ki kis Role mein, kis Din kitne log join huye."
-- a. Pehle Role wise group karega, 
-- b. phir har role ke andar Joining Date check karega
SELECT 
    Current_role, 
    Date_of_Joining, 
    COUNT(*) as Staff_Count
FROM staffrecord2026
GROUP BY Current_role, Date_of_Joining;
-- Logic: Yahan SQL ne pehle saare 'Developers' ko ek saath kiya, phir unme se un logo ki ginti ki jinki joining date same thi.





