-- Example Trigger: Before insert on Sales_Order, check stock availability

CREATE OR REPLACE TRIGGER trg_check_stock
BEFORE INSERT ON Sales_Order
FOR EACH ROW
DECLARE
    v_stock Product.Stock_Quantity%TYPE;
BEGIN
    SELECT Stock_Quantity INTO v_stock FROM Product WHERE Product_ID = :NEW.Product_ID;

    IF v_stock < :NEW.Quantity_Sold THEN
        RAISE_APPLICATION_ERROR(-20001, 'Insufficient stock available for Product_ID: ' || :NEW.Product_ID);
    END IF;
END;
/

-- Test trigger (try inserting an order with high quantity)
-- Should give error if quantity exceeds stock

INSERT INTO Sales_Order (SO_ID, Customer_ID, Product_ID, Order_Date, Quantity_Sold, Total_Price, Status)
VALUES (Sales_Order_SEQ.NEXTVAL, 2, 1, SYSDATE, 9999, 100000, 'Pending');
