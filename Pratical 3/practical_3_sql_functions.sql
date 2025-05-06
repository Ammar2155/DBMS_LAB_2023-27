-- 1. Subquery: Find the products with the highest selling price in the Product table
SELECT Product_Name, Selling_Price
FROM Product
WHERE Selling_Price = (
    SELECT MAX(Selling_Price) 
    FROM Product
);

-- 2. Subquery: Find customers who have placed orders worth more than 500
SELECT Customer_Name, Email
FROM Customer
WHERE Customer_ID IN (
    SELECT Customer_ID
    FROM Sales_Order
    WHERE Total_Price > 500
);

-- 3. Subquery with EXISTS: Find products that have been ordered at least once
SELECT Product_Name
FROM Product P
WHERE EXISTS (
    SELECT 1 
    FROM Sales_Order S
    WHERE S.Product_ID = P.Product_ID
);

-- 4. Inner Join: List the names of all customers along with the products they ordered
SELECT C.Customer_Name, P.Product_Name
FROM Customer C
JOIN Sales_Order S ON C.Customer_ID = S.Customer_ID
JOIN Product P ON S.Product_ID = P.Product_ID;

-- 5. Left Join: List all products and the sales orders that have been placed for them (include products with no sales)
SELECT P.Product_Name, S.SO_ID
FROM Product P
LEFT JOIN Sales_Order S ON P.Product_ID = S.Product_ID;

-- 6. Right Join: List all suppliers and their respective products (include suppliers with no products)
SELECT Sup.Supplier_Name, P.Product_Name
FROM Supplier Sup
RIGHT JOIN Purchase_Order PO ON Sup.Supplier_ID = PO.Supplier_ID
RIGHT JOIN Product P ON PO.Product_ID = P.Product_ID;

-- 7. Full Outer Join: List all products and sales orders (show all orders, including those without products, and all products without orders)
SELECT P.Product_Name, S.SO_ID
FROM Product P
FULL OUTER JOIN Sales_Order S ON P.Product_ID = S.Product_ID;

-- 8. Subquery with Aggregate Function: Find the total cost of orders for each customer
SELECT Customer_ID, SUM(Total_Price) AS Total_Spent
FROM Sales_Order
GROUP BY Customer_ID
HAVING SUM(Total_Price) > 500;

-- 9. Subquery with NOT EXISTS: Find customers who have not placed any orders
SELECT Customer_Name
FROM Customer C
WHERE NOT EXISTS (
    SELECT 1
    FROM Sales_Order S
    WHERE S.Customer_ID = C.Customer_ID
);
