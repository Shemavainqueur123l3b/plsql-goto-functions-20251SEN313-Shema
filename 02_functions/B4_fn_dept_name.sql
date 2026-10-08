-- Student: Shema Vainqueur
-- Student ID: 20251SEN313
-- Course: INSY 8311
-- B4: Department Name Function

CREATE OR REPLACE FUNCTION fn_dept_name (
    p_department_id IN departments.department_id%TYPE
)
RETURN VARCHAR2
IS
    v_department_name departments.department_name%TYPE;
BEGIN
    SELECT department_name
    INTO v_department_name
    FROM departments
    WHERE department_id = p_department_id;

    RETURN v_department_name;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Department Not Found';
END;
/

SELECT employee_id,
       first_name,
       last_name,
       department_id,
       fn_dept_name(department_id) AS department_name
FROM employees;