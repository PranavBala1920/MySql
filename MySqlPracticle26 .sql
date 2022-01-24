-- Practicle 26:
 
-- Insert multiple data in all tables
-- Hobby 
INSERT INTO hobby(NAME)
VALUES
	('Nancy'),	
	('Andrew'),
	('Janet'),
	('Margaret');
	
-- Employee
INSERT INTO employee(FirstName, LastName, Age, MobileNumber, Address)
VALUES
	('Pranav', 'Barot', '21', '8780282128', 'Naroda'),
	('Ravi', 'Patel', '25', '5455452525', 'Nikol'),
	('Jay', 'Patel', '21', '87', 'Bapunager'),
	('Jaymin', 'Kotadiay', '26', '87', 'Naroda');

-- Employee_salary
INSERT INTO employee_salary(FkEmployeeId, Salary, DATE)
VALUES 
	(1, 10000.00, '2021-12-22'),
	(2, 1500.00, '2021-12-22'),
	(3, 1200.00, '2021-12-22'),
	(4, 1800.00, '2021-12-22');


-- Employee_hobby
INSERT INTO employee_hobby(FkEmployeeId, FkHobbyId)
VALUES 
	(1, 2),
	(2, 1),
	(3, 4),
	(4, 3);



-- Update data of all tables
-- Hobby
UPDATE hobby
SET NAME = 'Coding'
WHERE id = 1;

UPDATE hobby
SET NAME = 'Gym'
WHERE id = 2;

UPDATE hobby
SET NAME = 'ContentMaking'
WHERE id = 3;

UPDATE hobby
SET NAME = 'SongWriter'
WHERE id = 4;

-- Employee
UPDATE employee
SET MobileNumber = '1234567890'
WHERE id = 3;

UPDATE employee
SET LastName = 'Brahmbhatt'
WHERE id = 1;

UPDATE employee
SET Address = 'vastral'
WHERE id = 2;

UPDATE employee
SET FirstName = 'Mitesh'
WHERE id = 4;

UPDATE employee
SET MobileNumber = '9426529990'
WHERE id = 4;

-- Employee_salary
UPDATE employee_salary
SET Salary = 7000.00
WHERE id = 2;

UPDATE employee_salary
SET Salary = 9000.00
WHERE FkEmployeeId = 1;

UPDATE employee_salary
SET DATE = '2022-01-23'
WHERE FkEmployeeId = 3;

UPDATE employee_salary
SET Salary = 16000.00
WHERE FkEmployeeId = 4;


UPDATE employee_salary
SET Salary = 7000.00
WHERE id = 2;

UPDATE employee_salary
SET Salary = 9000.00
WHERE id = 1;

UPDATE employee_salary
SET DATE = '2022-01-23'
WHERE id = 3;

UPDATE employee_salary
SET Salary = 16000.00
WHERE id = 4;

-- Employee_hobby
UPDATE employee_hobby
SET FkHobbyId = 1 
WHERE id = 1;

UPDATE employee_hobby
SET FkHobbyId = 2 
WHERE id = 2;

UPDATE employee_hobby
SET FkHobbyId = 3 
WHERE id = 3;

UPDATE employee_hobby
SET FkHobbyId = 4 
WHERE id = 4;

-- Delete 2 records of all tables
-- Hobby
DELETE FROM hobby
WHERE id IN (3, 4);

-- Employee
DELETE FROM employee
WHERE id IN (3, 4);

-- Employee_salary
DELETE FROM employee_salary
WHERE id IN (3, 4);

-- Employee_hobby
DELETE FROM employee_hobby
WHERE id IN (3, 4);

-- Truncate all tables
-- Hobby
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE hobby;
SET FOREIGN_KEY_CHECKS = 1;

-- Employee
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE employee;
SET FOREIGN_KEY_CHECKS = 1;

-- Employee_salary
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE employee_salary;
SET FOREIGN_KEY_CHECKS = 1;

-- Employee_hobby
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE employee_hobby;
SET FOREIGN_KEY_CHECKS = 1;