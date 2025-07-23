
SELECT * FROM employee_demographics WHERE gender != 'Female';

-- Logical Operator
SELECT * 
FROM employee_demographics 
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male';

-- Like statement
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer%';