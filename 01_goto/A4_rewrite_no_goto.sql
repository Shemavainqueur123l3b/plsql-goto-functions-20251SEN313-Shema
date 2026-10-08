-- Student: Shema Vainqueur
-- Student ID: 20251SEN313
-- A4: Rewrite Without GOTO

SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 500000;
BEGIN
    IF v_salary > 400000 THEN
        DBMS_OUTPUT.PUT_LINE('Salary is above 400000.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Salary is below or equal to 400000.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('Salary review completed.');
END;
/