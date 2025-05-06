
-- Insert into User_Table
INSERT INTO User_Table (User_ID, User_Name, Role, Password) VALUES (1, 'admin1', 'Admin', 'admin123');
INSERT INTO User_Table (User_ID, User_Name, Role, Password) VALUES (2, 'manager1', 'Manager', 'mgr123');
INSERT INTO User_Table (User_ID, User_Name, Role, Password) VALUES (3, 'staff1', 'Staff', 'staff123');
INSERT INTO User_Table (User_ID, User_Name, Role, Password) VALUES (4, 'supervisor1', 'Manager', 'super123');
INSERT INTO User_Table (User_ID, User_Name, Role, Password) VALUES (5, 'clerk1', 'Staff', 'clerk@321');
INSERT INTO User_Table (User_ID, User_Name, Role, Password) VALUES (6, 'analyst1', 'Admin', 'analyst@pass');


-- Insert into Product
INSERT INTO Product (Product_ID, Product_Name, Category, Description, Cost_Price, Selling_Price, Stock_Quantity, Reorder_Level)
VALUES (101, 'Laptop', 'Electronics', '15-inch laptop', 50000, 60000, 50, 10);

INSERT INTO Product (Product_ID, Product_Name, Category, Description, Cost_Price, Selling_Price, Stock_Quantity, Reorder_Level)
VALUES (102, 'Smartphone', 'Electronics', '5G smartphone', 20000, 25000, 80, 20);

INSERT INTO Product (Product_ID, Product_Name, Category, Description, Cost_Price, Selling_Price, Stock_Quantity, Reorder_Level)
VALUES (103, 'Desk Chair', 'Furniture', 'Ergonomic office chair', 1500, 2500, 100, 15);

INSERT INTO Product (Product_ID, Product_Name, Category, Description, Cost_Price, Selling_Price, Stock_Quantity, Reorder_Level)
VALUES (104, 'Wireless Mouse', 'Electronics', 'Bluetooth-enabled mouse', 500, 799, 150, 20);

INSERT INTO Product (Product_ID, Product_Name, Category, Description, Cost_Price, Selling_Price, Stock_Quantity, Reorder_Level)
VALUES (105, 'Office Desk', 'Furniture', 'Wooden desk with drawers', 2500, 4000, 60, 10);

INSERT INTO Product (Product_ID, Product_Name, Category, Description, Cost_Price, Selling_Price, Stock_Quantity, Reorder_Level)
VALUES (106, 'Headphones', 'Electronics', 'Noise-cancelling headphones', 1500, 2000, 70, 25);

-- Insert into Supplier
INSERT INTO Supplier (Supplier_ID, Supplier_Name, Contact_Number, Email, Address)
VALUES (201, 'Tech Supplies Ltd.', '9876543210', 'contact@techsupplies.com', 'Delhi');

INSERT INTO Supplier (Supplier_ID, Supplier_Name, Contact_Number, Email, Address)
VALUES (202, 'Gadget World', '9123456780', 'support@gadgetworld.com', 'Mumbai');
INSERT INTO Supplier (Supplier_ID, Supplier_Name, Contact_Number, Email, Address)
VALUES (203, 'Elite Office Supplies', '7986541230', 'contact@eliteoffice.com', 'Chennai');

INSERT INTO Supplier (Supplier_ID, Supplier_Name, Contact_Number, Email, Address)
VALUES (204, 'ElectroMart', '7012345678', 'sales@electromart.com', 'Bangalore');

INSERT INTO Supplier (Supplier_ID, Supplier_Name, Contact_Number, Email, Address)
VALUES (205, 'HomeCraft', '7878787878', 'service@homecraft.com', 'Pune');

-- Insert into Customer
INSERT INTO Customer (Customer_ID, Customer_Name, Contact_Number, Email, Address)
VALUES (301, 'John Doe', '8888888888', 'john.doe@example.com', 'New York');

INSERT INTO Customer (Customer_ID, Customer_Name, Contact_Number, Email, Address)
VALUES (302, 'Jane Smith', '9999999999', 'jane.smith@example.com', 'Los Angeles');

INSERT INTO Customer (Customer_ID, Customer_Name, Contact_Number, Email, Address)
VALUES (303, 'Alice Johnson', '7777777777', 'alice.johnson@example.com', 'Chicago');

INSERT INTO Customer (Customer_ID, Customer_Name, Contact_Number, Email, Address)
VALUES (304, 'Bob Lee', '7666666666', 'bob.lee@example.com', 'Texas');

INSERT INTO Customer (Customer_ID, Customer_Name, Contact_Number, Email, Address)
VALUES (305, 'Sophie Turner', '7555555555', 'sophie.t@example.com', 'London');


-- Insert into Warehouse
INSERT INTO Warehouse (Warehouse_ID, Warehouse_Location, Capacity)
VALUES (401, 'Warehouse-A', 500);

INSERT INTO Warehouse (Warehouse_ID, Warehouse_Location, Capacity)
VALUES (402, 'Warehouse-B', 800);

INSERT INTO Warehouse (Warehouse_ID, Warehouse_Location, Capacity)
VALUES (403, 'Warehouse-C', 600);

INSERT INTO Warehouse (Warehouse_ID, Warehouse_Location, Capacity)
VALUES (404, 'Warehouse-D', 450);

INSERT INTO Warehouse (Warehouse_ID, Warehouse_Location, Capacity)
VALUES (405, 'Warehouse-E', 700);

-- Insert into Purchase_Order
INSERT INTO Purchase_Order (PO_ID, Supplier_ID, Product_ID, Order_Date, Quantity_Ordered, Total_Cost, Status)
VALUES (501, 201, 101, TO_DATE('2025-04-01', 'YYYY-MM-DD'), 30, 1500000, 'Completed');

INSERT INTO Purchase_Order (PO_ID, Supplier_ID, Product_ID, Order_Date, Quantity_Ordered, Total_Cost, Status)
VALUES (502, 202, 102, TO_DATE('2025-04-05', 'YYYY-MM-DD'), 50, 1000000, 'Pending');

INSERT INTO Purchase_Order (PO_ID, Supplier_ID, Product_ID, Order_Date, Quantity_Ordered, Total_Cost, Status)
VALUES (503, 203, 104, TO_DATE('2025-04-08', 'YYYY-MM-DD'), 100, 50000, 'Completed');

INSERT INTO Purchase_Order (PO_ID, Supplier_ID, Product_ID, Order_Date, Quantity_Ordered, Total_Cost, Status)
VALUES (504, 204, 105, TO_DATE('2025-04-09', 'YYYY-MM-DD'), 20, 50000, 'Pending');

INSERT INTO Purchase_Order (PO_ID, Supplier_ID, Product_ID, Order_Date, Quantity_Ordered, Total_Cost, Status)
VALUES (505, 205, 106, TO_DATE('2025-04-11', 'YYYY-MM-DD'), 50, 75000, 'Completed');

-- Insert into Sales_Order
INSERT INTO Sales_Order (SO_ID, Customer_ID, Product_ID, Order_Date, Quantity_Sold, Total_Price, Status)
VALUES (601, 301, 101, TO_DATE('2025-04-10', 'YYYY-MM-DD'), 2, 120000, 'Delivered');

INSERT INTO Sales_Order (SO_ID, Customer_ID, Product_ID, Order_Date, Quantity_Sold, Total_Price, Status)
VALUES (602, 302, 103, TO_DATE('2025-04-12', 'YYYY-MM-DD'), 5, 12500, 'Pending');

INSERT INTO Sales_Order (SO_ID, Customer_ID, Product_ID, Order_Date, Quantity_Sold, Total_Price, Status)
VALUES (603, 303, 104, TO_DATE('2025-04-13', 'YYYY-MM-DD'), 3, 2397, 'Delivered');

INSERT INTO Sales_Order (SO_ID, Customer_ID, Product_ID, Order_Date, Quantity_Sold, Total_Price, Status)
VALUES (604, 304, 105, TO_DATE('2025-04-14', 'YYYY-MM-DD'), 1, 4000, 'Pending');

INSERT INTO Sales_Order (SO_ID, Customer_ID, Product_ID, Order_Date, Quantity_Sold, Total_Price, Status)
VALUES (605, 305, 106, TO_DATE('2025-04-15', 'YYYY-MM-DD'), 2, 4000, 'Delivered');

-- Insert into Inventory_Transaction
INSERT INTO Inventory_Transaction (Transaction_ID, Product_ID, Warehouse_ID, Transaction_Type, Quantity, Transaction_Date)
VALUES (701, 101, 401, 'Add', 30, TO_DATE('2025-04-01', 'YYYY-MM-DD'));

INSERT INTO Inventory_Transaction (Transaction_ID, Product_ID, Warehouse_ID, Transaction_Type, Quantity, Transaction_Date)
VALUES (702, 102, 402, 'Add', 50, TO_DATE('2025-04-05', 'YYYY-MM-DD'));

INSERT INTO Inventory_Transaction (Transaction_ID, Product_ID, Warehouse_ID, Transaction_Type, Quantity, Transaction_Date)
VALUES (703, 101, 401, 'Deduct', 2, TO_DATE('2025-04-10', 'YYYY-MM-DD'));

INSERT INTO Inventory_Transaction (Transaction_ID, Product_ID, Warehouse_ID, Transaction_Type, Quantity, Transaction_Date)
VALUES (704, 104, 403, 'Add', 100, TO_DATE('2025-04-08', 'YYYY-MM-DD'));

INSERT INTO Inventory_Transaction (Transaction_ID, Product_ID, Warehouse_ID, Transaction_Type, Quantity, Transaction_Date)
VALUES (705, 105, 404, 'Add', 20, TO_DATE('2025-04-09', 'YYYY-MM-DD'));

INSERT INTO Inventory_Transaction (Transaction_ID, Product_ID, Warehouse_ID, Transaction_Type, Quantity, Transaction_Date)
VALUES (706, 106, 405, 'Add', 50, TO_DATE('2025-04-11', 'YYYY-MM-DD'));

-- Insert into Reports
INSERT INTO Reports (Report_ID, Generated_By, Report_Type, Generated_Date)
VALUES (801, 1, 'Sales', TO_DATE('2025-04-15', 'YYYY-MM-DD'));

INSERT INTO Reports (Report_ID, Generated_By, Report_Type, Generated_Date)
VALUES (802, 2, 'Inventory', TO_DATE('2025-04-16', 'YYYY-MM-DD'));

INSERT INTO Reports (Report_ID, Generated_By, Report_Type, Generated_Date)
VALUES (803, 3, 'Supplier Performance', TO_DATE('2025-04-17', 'YYYY-MM-DD'));

INSERT INTO Reports (Report_ID, Generated_By, Report_Type, Generated_Date)
VALUES (804, 4, 'Inventory Summary', TO_DATE('2025-04-18', 'YYYY-MM-DD'));

INSERT INTO Reports (Report_ID, Generated_By, Report_Type, Generated_Date)
VALUES (805, 5, 'Customer Purchase Report', TO_DATE('2025-04-18', 'YYYY-MM-DD'));




-- Example ALTER TABLE queries
ALTER TABLE Product ADD Manufacturer VARCHAR2(100);
ALTER TABLE Customer MODIFY Contact_Number VARCHAR2(15);
ALTER TABLE Supplier DROP COLUMN Address;

-- Example UPDATE queries
UPDATE Product SET Selling_Price = 52000 WHERE Product_ID = 1;
UPDATE Customer SET Address = 'Hyderabad' WHERE Customer_ID = 1;
UPDATE Supplier SET Email = 'newabc@suppliers.com' WHERE Supplier_ID = 1;
UPDATE Warehouse SET Capacity = 600 WHERE Warehouse_ID = 1;

-- Example DELETE queries
DELETE FROM Reports WHERE Report_ID = 1;
DELETE FROM Inventory_Transaction WHERE Transaction_ID = 2;
DELETE FROM Sales_Order WHERE SO_ID = 2;
DELETE FROM Purchase_Order WHERE PO_ID = 2;

-- Example basic SELECT queries (optional)
SELECT * FROM Product;
SELECT Product_Name, Selling_Price FROM Product WHERE Selling_Price > 20000;
