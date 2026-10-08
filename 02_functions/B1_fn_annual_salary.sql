-- Student: Shema Vainqueur
-- Student ID: 20251SEN313
-- Course: INSY 8311
-- B1: Annual Salary Function

CREATE OR REPLACE FUNCTION fn_annual_salary (
    p_employee_id IN employees.employee_id%TYPE
)
RETURN NUMBER
IS
    v_monthly_salary employees.monthly_salary%TYPE;
BEGIN
    SELECT monthly_salary
    INTO v_monthly_salary
    FROM employees
    WHERE employee_id = p_employee_id;

    RETURN v_monthly_salary * 12;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;
END;
/

SELECT employee_id,
       first_name,
       last_name,
       monthly_salary,
       fn_annual_salary(employee_id) AS annual_salary
FROM employees;