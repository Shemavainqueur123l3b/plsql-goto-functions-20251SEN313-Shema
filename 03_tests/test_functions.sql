-- Student: Shema Vainqueur
-- Student ID: 20251SEN313
-- Course: INSY 8311
-- Test Functions

SET SERVEROUTPUT ON;

-- Test B1: Annual Salary
SELECT employee_id,
       first_name,
       last_name,
       fn_annual_salary(employee_id) AS annual_salary
FROM employees;

-- Test B2: Years of Service
SELECT employee_id,
       first_name,
       last_name,
       fn_years_of_service(employee_id) AS years_of_service
FROM employees;

-- Test B3: Calculate Tax
SELECT employee_id,
       first_name,
       last_name,
       monthly_salary,
       fn_calculate_tax(monthly_salary) AS tax
FROM employees;

-- Test B4: Department Name
SELECT employee_id,
       first_name,
       last_name,
       department_id,
       fn_dept_name(department_id) AS department_name
FROM employees;