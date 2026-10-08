-- Student: Shema Vainqueur
-- Student ID: 20251SEN313
-- Course: INSY 8311
-- B3: Calculate Tax Function

CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_salary IN NUMBER
)
RETURN NUMBER
IS
    v_tax NUMBER;
BEGIN
    -- Assumption: 10% tax
    v_tax := p_salary * 0.10;

    RETURN v_tax;
END;
/

SELECT employee_id,
       first_name,
       last_name,
       monthly_salary,
       fn_calculate_tax(monthly_salary) AS tax
FROM employees;