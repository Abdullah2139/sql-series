-- Stored Preocedure


CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;
CALL large_salaries();

-- Multiple queries
CREATE PROCEDURE large_salaries1()
SELECT *
FROM employee_salary
WHERE salary >= 50000;
SELECT *
FROM employee_salary
WHERE salary >= 10000;
CALL large_salaries1();

-- Multiple queries through delimiter
DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

CALL large_salaries3();

-- Passing parzmeter to delimiter

DELIMITER $$
CREATE PROCEDURE large_salaries4(employee_id_param INT)
BEGIN
	SELECT salary
	FROM employee_salary
	WHERE employee_id = employee_id_param;
END $$
DELIMITER ;

CALL large_salaries4(1);








