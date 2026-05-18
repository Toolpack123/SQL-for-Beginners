-- SAKILA DATABASE --
select first_name, last_name from customer;
-- Alias(AS)
select concat(first_name,'  ', last_name) as 'Full Name' from customer;
select concat(first_name,'  ', last_name)  Full_Name from customer;

-- Order by
select first_name, last_name From customer order by last_name desc;
# Payment Table
select customer_id, amount, payment_date 
From Payment 
Order by amount asc;
-- Count(*) vs Count(col)
select count(*) from address;
select count(address2) from address;

-- SUM(), AVG(),MIN(), MAX()

select 
SUM(amount) as Total_Amount, 
AVG(amount) as Average_Amount, 
MIN(amount) as Min_Amount, 
MAX(amount) as Max_Amount
FROM payment;

-- longest Movie, shortes Movie
select MAX(length) as Longest_Movie, MIN(length) as Shortest_Movie From film;

-- Group BY: Customer_ID, Amount : Total Spent customer wise
select customer_id, Sum(amount) as Total_spent From payment
Group By customer_id Order By Total_spent Desc LIMIT 5;

-- From this table can't show customer name ? Customer table ...So JOIN 

-- Find Customer ,SUM(amount)>100 dollar

select customer_id, Sum(amount) as Total_amount From Payment
Where staff_id = 1  -- Filter Staff ID = 1
Group BY customer_id -- For Staff ID 1, Group : Customer ID wise
Having Total_amount>100 -- Filter , Total > 100
Order by Total_amount desc
LIMIT 2 ; -- End : Sort Total
-- If i wan to calculate category wise Total amount then 

# TYPES OF JOIN : APPLY IN SAKILA DATABASE













