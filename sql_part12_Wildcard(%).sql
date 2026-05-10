/* Wildcard character
1.Any name starting with 'S'
2.Emails ending with '.com'
3.Any name that has 'ro' anywhere
4.Names where the second letter is 'a
*/
Use school;
select * from staffrecord2026
where FullName Like 'S%';

select * from staffrecord2026
where Email Like '%.com';

select * from staffrecord2026
where FullName Like '%ro%';

select * from staffrecord2026
where FullName Like '_a%';