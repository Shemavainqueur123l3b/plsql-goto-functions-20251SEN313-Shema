-- Student: Shema Vainqueur
-- Student ID: 20251SEN313
-- Course: INSY 8311
-- Test C1: Payroll Validator

SELECT employee_id,
       first_name,
       last_name,
       monthly_salary,
       fn_validate_payroll(employee_id) AS payroll_status
FROM employees;