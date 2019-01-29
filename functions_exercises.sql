USE employees;

-- Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.

SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name'
FROM employees
WHERE last_name LIKE 'E%E'
ORDER BY last_name, first_name;

-- For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())

SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name',
        hire_date AS 'Hire Date',
        DATEDIFF(CURDATE(), hire_date) AS 'Days Worked'
FROM employees
WHERE birth_date LIKE '%-12-25'
      AND hire_date LIKE '199%'
ORDER BY `Days Worked` DESC;