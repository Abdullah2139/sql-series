-- Temporary tables

CREATE TEMPORARY TABLE temp_table
(first_name varchar (50),
last_name varchar (50),
favourite_movie varchar(100)
);

SELECT *
FROM temp_table;

INSERT INTO temp_table
VALUES('Abdullah', 'Khan', 'Intersteller');

SELECT *
FROM temp_table;

-- from existing data

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM salary_over_50k;