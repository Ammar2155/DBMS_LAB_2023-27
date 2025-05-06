-- 1. AND Operator: Find products where selling price is between 100 and 300, and stock quantity is greater than 50
SELECT Product_Name, Selling_Price, Stock_Quantity 
FROM Product
WHERE Selling_Price BETWEEN 100 AND 300 
AND Stock_Quantity > 50;

-- 2. OR Operator: Find customers who are either from 'New York' or 'California'
SELECT Customer_Name, Address
FROM Customer
WHERE Address LIKE '%New York%' OR Address LIKE '%California%';

-- 3. NOT Operator: Find products where stock quantity is not 100
SELECT Product_Name, Stock_Quantity 
FROM Product
WHERE NOT Stock_Quantity = 100;

-- 4. LIKE Operator: Find all customers whose names start with 'A'
SELECT Customer_Name, Email
FROM Customer
WHERE Customer_Name LIKE 'A%';

-- 5. BETWEEN Operator: Find all orders placed in the year 2024
SELECT SO_ID, Order_Date, Customer_ID
FROM Sales_Order
WHERE Order_Date BETWEEN TO_DATE('01-JAN-2024', 'DD-MON-YYYY') AND TO_DATE('31-DEC-2024', 'DD-MON-YYYY');

-- 6. IN Operator: Find all products that belong to categories 'Electronics' or 'Furniture'
SELECT Product_Name, Category
FROM Product
WHERE Category IN ('Electronics', 'Furniture');

-- 7. Combining Operators: Find products with selling price between 100 and 300, 
-- stock quantity greater than 50, and in 'Electronics' category
SELECT Product_Name, Selling_Price, Stock_Quantity
FROM Product
WHERE Selling_Price BETWEEN 100 AND 300 
AND Stock_Quantity > 50
AND Category = 'Electronics';
