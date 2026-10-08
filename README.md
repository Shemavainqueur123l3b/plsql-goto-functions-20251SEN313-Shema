# PL/SQL GOTO Statements and Functions

**Student:** Shema Vainqueur  
**Student ID:** 20251SEN313  
**Course:** Database Development with PL/SQL (INSY 8311)

## Description

This project demonstrates the use of PL/SQL `GOTO` statements, stored functions, exception handling, and functions used in SQL queries.

The database uses two tables:

- `departments`
- `employees`

The project includes exercises for GOTO statements and functions for working with employee salary, service years, tax, and department information.

## Project Structure

```text
plsql-goto-functions-20251SEN313-shema/
│
├── README.md
├── .gitignore
│
├── 00_setup/
│   └── create_tables.sql
│
├── 01_goto/
│   ├── A1_number_classifier.sql
│   ├── A2_salary_review.sql
│   ├── A3_illegal_goto.sql
│   └── A4_rewrite_no_goto.sql
│
├── 02_functions/
│   ├── B1_fn_annual_salary.sql
│   ├── B2_fn_years_of_service.sql
│   ├── B3_fn_calculate_tax.sql
│   ├── B4_fn_dept_name.sql
│   └── C1_fn_validate_payroll.sql
│
├── 03_tests/
│   ├── B5_functions_in_select.sql
│   ├── test_functions.sql
│   └── test_validate_payroll.sql
│
├── screenshots/
│   ├── A1_output.png
│   ├── A2_output.png
│   ├── A3_error_and_fix.png
│   ├── A4_output.png
│   ├── B5_select_output.png
│   └── C1_output.png
│
└── docs/
    └── REFLECTION.md
```

## Database

**DBMS:** Oracle Database  
**Tool:** Oracle SQL Developer

The setup script creates the `departments` and `employees` tables and inserts sample data.

## How to Run

1. Run `00_setup/create_tables.sql`.
2. Run the function files in `02_functions/`.
3. Run the GOTO programs in `01_goto/`.
4. Run the test files in `03_tests/`.
5. Check the output and save the required screenshots.

## Functions

The project contains functions for:

- Calculating annual salary.
- Calculating years of service.
- Calculating tax.
- Getting a department name.
- Validating payroll.

The functions are also demonstrated inside SQL `SELECT` statements.

## Author

**Shema Vainqueur**  
**20251SEN313**