USE employees;

-- Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.

SELECT departments.dept_name AS 'Department Name',
        CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments
JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN titles ON employees.emp_no = titles.emp_no
WHERE titles.title = 'manager'
      AND titles.to_date LIKE '9%'
ORDER BY `Department Name`;

-- Find the name of all departments currently managed by women.

SELECT departments.dept_name AS 'Department Name',
        CONCAT(employees.first_name, ' ', employees.last_name) AS 'Manager Name'
FROM departments
JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN titles ON employees.emp_no = titles.emp_no
WHERE titles.title = 'manager'
      AND titles.to_date LIKE '9%'
      AND employees.gender = 'F'
ORDER BY `Department Name`;

-- Find the current titles of employees currently working in the Customer Service department.

SELECT titles.title AS Title, COUNT(*) AS Count
FROM departments
JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN titles ON employees.emp_no = titles.emp_no
WHERE titles.to_date LIKE '9%'
      AND dept_emp.to_date LIKE '9%'
      AND departments.dept_name = 'Customer Service'
GROUP BY titles.title;

-- Find the current salary of all current managers.

SELECT departments.dept_name AS 'Department Name',
        CONCAT(employees.first_name, ' ', employees.last_name) AS Name,
        salaries.salary AS Salary
FROM departments
JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN titles ON employees.emp_no = titles.emp_no
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE titles.title = 'manager'
      AND titles.to_date LIKE '9%'
      AND salaries.to_date like '9%'
ORDER BY `Department Name`;

-- Bonus Find the names of all current employees, their department name, and their current manager's name.

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'Employee Name',
        departments.dept_name AS 'Department Name',
        CASE
            WHEN (titles.title = 'manager'
                  AND titles.to_date LIKE '9%')
                  THEN employees.first_name END AS 'Manager Name'
FROM departments
JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN titles ON employees.emp_no = titles.emp_no
WHERE titles.to_date LIKE '9%'
ORDER BY `Department Name`;