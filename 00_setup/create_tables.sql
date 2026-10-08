-- Student: Shema Vainqueur
-- Student ID: 20251SEN313
-- Course: INSY 8311
-- Setup: Create Tables

-- Remove existing tables if they exist
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE employees CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE departments CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/

-- Create departments table
CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(100) NOT NULL
);

-- Create employees table
CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    monthly_salary NUMBER(12,2) NOT NULL,
    hire_date DATE NOT NULL,
    department_id NUMBER,
    CONSTRAINT fk_emp_dept
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

-- Insert departments
INSERT INTO departments VALUES (10, 'Information Technology');
INSERT INTO departments VALUES (20, 'Finance');
INSERT INTO departments VALUES (30, 'Human Resources');
INSERT INTO departments VALUES (40, 'Marketing');

-- Insert employees
INSERT INTO employees VALUES
(101, 'Aline', 'Mukamana', 450000, DATE '2021-02-15', 10);

INSERT INTO employees VALUES
(102, 'Eric', 'Niyonzima', 750000, DATE '2019-06-10', 20);

INSERT INTO employees VALUES
(103, 'Grace', 'Uwase', 300000, DATE '2023-01-20', 30);

INSERT INTO employees VALUES
(104, 'Patrick', 'Habimana', 1200000, DATE '2018-09-01', 10);

INSERT INTO employees VALUES
(105, 'Diane', 'Ingabire', 600000, DATE '2022-04-12', 40);

COMMIT;

-- Verify the tables
SELECT * FROM departments;

SELECT * FROM employees;