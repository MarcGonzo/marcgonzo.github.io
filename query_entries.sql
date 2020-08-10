SELECT * FROM employees ORDER BY last_name;

SELECT * FROM employees WHERE last_name = "Grizzlybear";

SELECT user_name FROM employees;

SELECT first_name, last_name FROM employees
    WHERE first_name = "Jerome" OR last_name = "Gorilla";

SELECT * FROM employees WHERE last_name LIKE 'g%';

SELECT * FROM jobs WHERE access LIKE '%animal%';

SELECT COUNT(*) FROM employees_job;

SELECT work_schedule, COUNT(*) FROM employees GROUP BY work_schedule;

SELECT employees.first_name, employees.last_name, jobs.job_title
FROM employees
INNER JOIN employees_job ON employees_job.employee_id = employees.employee_id

