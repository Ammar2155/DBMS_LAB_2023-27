-- Simple PL/SQL Program: Print a message
SET SERVEROUTPUT ON;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello! This is a simple PL/SQL program.');
END;
/

-- PL/SQL with IF Condition
DECLARE
    v_stock Product.Stock_Quantity%TYPE;
BEGIN
    SELECT Stock_Quantity INTO v_stock FROM Product WHERE Product_ID = 1;

    IF v_stock < 10 THEN
        DBMS_OUTPUT.PUT_LINE('Stock is low.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Stock is sufficient.');
    END IF;
END;
/

-- PL/SQL with FOR Loop
BEGIN
    FOR i IN 1..5 LOOP
        DBMS_OUTPUT.PUT_LINE('Iteration number: ' || i);
    END LOOP;
END;
/

-- PL/SQL with WHILE Loop
DECLARE
    v_counter NUMBER := 1;
BEGIN
    WHILE v_counter <= 5 LOOP
        DBMS_OUTPUT.PUT_LINE('WHILE Loop iteration: ' || v_counter);
        v_counter := v_counter + 1;
    END LOOP;
END;
/
