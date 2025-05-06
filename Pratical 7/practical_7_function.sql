SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION get_binary(n IN NUMBER) RETURN VARCHAR2 IS
    v_num NUMBER := n;
    v_binary VARCHAR2(100) := '';
BEGIN
    IF v_num = 0 THEN
        RETURN '0';
    END IF;
    
    WHILE v_num > 0 LOOP
        v_binary := MOD(v_num, 2) || v_binary;
        v_num := FLOOR(v_num / 2);
    END LOOP;

    RETURN v_binary;
END;
/

-- Test the function
DECLARE
    v_result VARCHAR2(100);
BEGIN
    v_result := get_binary(10);
    DBMS_OUTPUT.PUT_LINE('Binary of 10 is: ' || v_result);
END;
/
