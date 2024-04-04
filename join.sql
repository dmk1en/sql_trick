-- 1. Display the names (first_name, last_name) using the alias name “First Name", "Last Name" from the employees.
SELECT first_name AS 'First Name', last_name AS 'Last Name' 
FROM employees;

-- 2. Find the name (first_name, last_name), department ID, and department name of all the employees.
SELECT e.first_name, e.last_name, e.department_id, d.department_name
FROM employees e 
JOIN departments d
ON e.department_id = d.department_id;

-- 3. Find the name (first_name, last_name), job_title, department ID, and department name of the employees who work in London.
SELECT e.first_name, e.last_name, j.job_title, e.department_id, d.department_name 
FROM employees e 
JOIN departments d ON e.department_id = d.department_id
JOIN jobs j ON e.job_id = j.job_id
JOIN locations l on d.location_id = l.location_id
WHERE l.city = 'London';

-- 4. Find the employee id, name (last_name) along with their manager (manager_id, last_name).
SELECT e.employee_id, e.last_name, e.manager_id
FROM employees e;

-- 5. Find the name (first_name, last_name) and hire date of the employees who were hired after 'Jones'.
SELECT e.first_name, e.last_name, e.hire_date 
FROM employees e
JOIN employees davies ON davies.last_name = 'Jones' 
WHERE davies.hire_date < e.hire_date;

-- 6. Find the employee ID, job title, and the number of days between the ending date and starting date for all jobs in department having id 90.
SELECT e.employee_id, j.job_title, q.end_date - q.start_date
FROM job_history q 
JOIN employees e ON e.job_id = q.job_id 
JOIN jobs j ON j.job_id = q.job_id
WHERE q.department_id = 90;

-- 7. Display the department name, manager name, and city.
SELECT d.department_name, d.manager_id, l.city
FROM departments d 
JOIN locations l ON d.location_id = l.location_id;

-- 8. Display job title, employee (id, name), and the difference between the salary of the employee and the minimum salary for the job.
SELECT j.job_title, e.employee_id, e.first_name, j.max_salary - j.min_salary AS 'dif'
FROM employees e 
JOIN jobs j ON e.job_id = j.job_id;

-- 9. Display the job history that was done by any employee who is currently drawing more than 10000 of salary.
SELECT j.*
FROM job_history j 
JOIN employees e ON j.employee_id = e.employee_id 
WHERE e.salary > 10000;