-- Student: Shema Vainqueur
-- Student ID: 20251SEN313
-- Course: INSY 8311
-- B5: Functions in SQL

SELECT employee_id,
       first_name,
       last_name,
       monthly_salary,
       fn_annual_salary(employee_id) AS annual_salary,
       fn_years_of_service(employee_id) AS years_of_service,
       fn_dept_name(department_id) AS department_name
FROM employees;