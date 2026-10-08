DECLARE
    v_salary NUMBER := 500000;
BEGIN
    GOTO inside_if;

    IF v_salary > 400000 THEN
        <<inside_if>>
        DBMS_OUTPUT.PUT_LINE('Salary is above 400,000.');
    END IF;
END;
/