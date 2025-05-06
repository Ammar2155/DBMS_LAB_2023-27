-- Add Balance column to Customer table 
ALTER TABLE Customer ADD Balance NUMBER(10,2);

-- Insert sample balances
UPDATE Customer SET Balance = 1000 WHERE Customer_ID = 1;
UPDATE Customer SET Balance = 500 WHERE Customer_ID = 2;
COMMIT;

-- Procedure
CREATE OR REPLACE PROCEDURE transfer_funds(
    p_from_customer_id IN NUMBER,
    p_to_customer_id IN NUMBER,
    p_amount IN NUMBER
) IS
BEGIN
    UPDATE Customer
    SET Balance = Balance - p_amount
    WHERE Customer_ID = p_from_customer_id;

    UPDATE Customer
    SET Balance = Balance + p_amount
    WHERE Customer_ID = p_to_customer_id;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Transfer successful.');
END;
/

-- Test the procedure
BEGIN
    transfer_funds(1, 2, 200);
END;
/

-- Check balances after transfer
SELECT Customer_ID, Customer_Name, Balance FROM Customer;
