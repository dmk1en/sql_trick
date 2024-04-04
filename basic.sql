-- 1. Display the names (first_name, last_name) using alias name “First Name", "Last Name" from the employees.
SELECT first_name AS 'First Name', last_name AS 'Last Name'
FROM employees;

-- 2. Get unique department ID from employee table.
SELECT DISTINCT department_id
FROM employees;

-- 3. Get all employee details from the employee table who are hired in 2022.
SELECT * FROM employees WHERE hire_date >= '2022-01-01' AND hire_date <= '2022-12-31';

-- 4. Get the names (first_name, last_name), salary, PF of the employees (PF is calculated as 15% of salary).
SELECT first_name, last_name, salary, salary * 0.15 AS PF
FROM employees;

-- 5. Get the names (first_name, last_name), salary, PF of the employees if PF is greater than 10000.
SELECT first_name, last_name, salary, salary * 0.15 AS PF
FROM employees
WHERE salary * 0.15 > 10000;

-- 6. Get the list of employees and full information of their department.
SELECT e.employee_id, d.department_id, d.department_name, d.manager_id, d.location_id
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

-- 7. Calculate 171*214+625.
SELECT 171*214+625 AS RESULT;

-- 8. Get the names of all the employees from the employees table.
SELECT CONCAT(first_name, ' ', last_name) AS Employee_Name
FROM employees;

-- 9. Get first name from employees table after removing white spaces from both sides.
SELECT TRIM(first_name) AS trimmed_first_name
FROM employees;

-- 10. Select the first 10 records from a table.
SELECT *
FROM table_name
LIMIT 10;

-- 11. Get monthly salary (rounded to 2 decimal places) of each employee.
SELECT first_name, last_name, ROUND(salary/12, 2) AS 'Monthly Salary'
FROM employees;

-- 12. Get monthly salary (rounded to 2 decimal places) of each employee if the monthly salary is smaller than 5000.
SELECT first_name, last_name, ROUND(salary/12, 2) AS 'Monthly Salary'
FROM employees
WHERE salary/12 < 5000;