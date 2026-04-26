-- SQL Practice Assignment: E-Commerce Inventory Management
/* Scenario: You are a Data Analyst for a growing retail store. You need to set up their inventory system and help the 
Manager filters specific products for a weekend sale.*/
-- Phase 1: Database Setup (The Foundation)
/*Task: Create a database named RetailStore and a table named Products with the following columns:
ProductID (Integer)
ProductName (Varchar)
Category (Varchar)
Price (Decimal)
StockQuantity (Integer) */

-- Phase 2: Data Population
/*Task: Insert at least 5 records into the table, ensuring you have a mix of categories (e.g., 'Electronics', 'Furniture') and 
different price points.*/

-- Phase 3: Business Logic (AND / OR Practice)
-- Write the SQL queries for the following requests from your manager:

# 1. High-Value Electronics: Find all products that belong to the 'Electronics' category AND have a price greater than 500.
# 2. Low Stock Alert: Find all products where the category is 'Furniture' OR the StockQuantity is less than 10.
# 3. Specific Search: Find products that are either named 'Laptop' OR 'Smartphone' AND have a price under 1000. (Hint: Use parentheses to manage logic priority).
