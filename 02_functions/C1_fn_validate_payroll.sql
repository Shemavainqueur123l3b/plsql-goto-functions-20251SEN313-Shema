-- Student: Shema Vainqueur
-- Student ID: 20251SEN313
-- Course: INSY 8311
-- C1: Payroll Validator

CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_employee_id IN employees.employee_id%TYPE
)
RETURN VARCHAR2
IS
    v_salary employees.monthly_salary%TYPE;
BEGIN
    SELECT monthly_salary
    INTO v_salary
    FROM employees
    WHERE employee_id = p_employee_id;

    IF v_salary > 0 THEN
        RETURN 'VALID';
    ELSE
        RETURN 'INVALID';
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'EMPLOYEE NOT FOUND';
END;
/

SELECT employee_id,
       first_name,
       last_name,
       monthly_salary,
       fn_validate_payroll(employee_id) AS payroll_status
FROM employees;