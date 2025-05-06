-- 1. Retrieve all products whose selling price is above 200
SELECT Product_Name, Selling_Price
FROM Product
WHERE Selling_Price > 200;

-- 2. Find the total quantity sold for each product
SELECT Product_ID, SUM(Quantity_Sold) AS Total_Quantity_Sold
FROM Sales_Order
GROUP BY Product_ID;

-- 3. Retrieve all customers who bought products worth more than 500
SELECT Customer_Name, Email
FROM Customer
WHERE Customer_ID IN (
    SELECT Customer_ID
    FROM Sales_Order
    WHERE Total_Price > 500
);

-- 4. Find the products that have been ordered at least once (using EXISTS)
SELECT Product_Name
FROM Product P
WHERE EXISTS (
    SELECT 1
    FROM Sales_Order S
    WHERE S.Product_ID = P.Product_ID
);

-- 5. Calculate the total cost of all purchase orders
SELECT SUM(Total_Cost) AS Total_Purchase_Cost
FROM Purchase_Order;

-- 6. Inner Join: Retrieve a list of customers and the products they bought
SELECT C.Customer_Name, P.Product_Name
FROM Customer C
JOIN Sales_Order S ON C.Customer_ID = S.Customer_ID
JOIN Product P ON S.Product_ID = P.Product_ID;

-- 7. Left Join: Retrieve all products and their sales orders (if any)
SELECT P.Product_Name, S.SO_ID
FROM Product P
LEFT JOIN Sales_Order S ON P.Product_ID = S.Product_ID;

-- 8. Right Join: List all suppliers and the products they supply
SELECT Sup.Supplier_Name, P.Product_Name
FROM Supplier Sup
RIGHT JOIN Purchase_Order PO ON Sup.Supplier_ID = PO.Supplier_ID
RIGHT JOIN Product P ON PO.Product_ID = P.Product_ID;

-- 9. Full Outer Join: Retrieve all products and sales orders, including those with no orders
SELECT P.Product_Name, S.SO_ID
FROM Product P
FULL OUTER JOIN Sales_Order S ON P.Product_ID = S.Product_ID;

-- 10. Subquery with Aggregate Function: Find customers who spent more than 500
SELECT Customer_ID, SUM(Total_Price) AS Total_Spent
FROM Sales_Order
GROUP BY Customer_ID
HAVING SUM(Total_Price) > 500;

-- 11. Subquery with NOT EXISTS: Find customers who haven't placed any orders
SELECT Customer_Name
FROM Customer C
WHERE NOT EXISTS (
    SELECT 1
    FROM Sales_Order S
    WHERE S.Customer_ID = C.Customer_ID
);

-- 12. Update product stock quantity after a sale
UPDATE Product
SET Stock_Quantity = Stock_Quantity - 5
WHERE Product_ID = 1;  -- Example: Decrease stock of product with ID 1

-- 13. Delete a customer record (ensure the customer hasn't placed orders first)
DELETE FROM Customer
WHERE Customer_ID = 5;  -- Example: Delete customer with ID 5

-- 14. Alter Product table to add a new column for product description
ALTER TABLE Product
ADD Description VARCHAR2(500);

-- 15. Create a View to display the total spending by each customer
CREATE VIEW Customer_Spending AS
SELECT Customer_ID, SUM(Total_Price) AS Total_Spent
FROM Sales_Order
GROUP BY Customer_ID;

-- 16. Query the created View to check customer spending
SELECT * FROM Customer_Spending;
