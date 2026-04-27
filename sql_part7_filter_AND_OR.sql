-- Part7: And vs,OR Logical operator
Use school;
#AND: both condition to be true
/*Condition1: age = 25 
Condition2: city = lucknow*/
-- --------------------------------------------
/*I want a student who is 25 OR 
lives in Lucknow.*/
/* Condition1: age = 25 
Condition2: city = 'lucknow'
Condition3: age = 25 , city = 'lucknow'
*/

# OR: Only one conditions needs to be true.

select s_name,s_age,s_city from student
where s_age = 25 OR s_city = 'luknow'; 