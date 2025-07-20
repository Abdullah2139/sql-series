-- Case Statement

SELECT first_name, last_name, age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'Old'
    WHEN age >= 50 THEN 'On Death Door'
END AS Age_Bracket
FROM employee_demographics;