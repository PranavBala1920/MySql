-- Practicle 26:

-- Table Creation Script

-- hobby
CREATE TABLE `hobby` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- employee
CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `last_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `age` int NOT NULL,
  `mobile_number` varchar(17) NOT NULL,
  `address` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- employee_salary
CREATE TABLE `employee_salary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fk_employee_id` int NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id_idx` (`fk_employee_id`),
  CONSTRAINT `employee_id` FOREIGN KEY (`fk_employee_id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- employee_hobby
CREATE TABLE `employee_hobby` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fk_employee_id` int NOT NULL,
  `fk_hobby_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id_idx` (`fk_employee_id`),
  KEY `hobby_id_idx` (`fk_hobby_id`),
  CONSTRAINT `employeeTable_id` FOREIGN KEY (`fk_employee_id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hobby_id` FOREIGN KEY (`fk_hobby_id`) REFERENCES `hobby` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- Select Query
-- hobby
SELECT * FROM hobby;

-- employee
SELECT * FROM employee;

-- employee_salary
SELECT * FROM employee_salary;

-- employee_hobby
SELECT * FROM employee_hobby;


-- Insert multiple data in all tables
-- Hobby 
INSERT INTO hobby(NAME)
VALUES
	('Nancy'),	
	('Andrew'),
	('Janet'),
	('Margaret');
	
-- Employee
INSERT INTO employee(first_name, last_name, age, mobileNumber, address)
VALUES
	('Pranav', 'Barot', '21', '8780282128', 'Naroda'),
	('Ravi', 'Patel', '25', '5455452525', 'Nikol'),
	('Jay', 'Patel', '21', '87', 'Bapunager'),
	('Jaymin', 'Kotadiay', '26', '87', 'Naroda');

-- Employee_salary
INSERT INTO employee_salary(fk_employee_id, salary, DATE)
VALUES 
	(1, 10000.00, '2021-12-22'),
	(2, 1500.00, '2021-12-22'),
	(3, 1200.00, '2021-12-22'),
	(4, 1800.00, '2021-12-22');

-- Employee_hobby
INSERT INTO employee_hobby(fk_employee_id, fk_hobby_id)
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
SET mobile_number = '1234567890'
WHERE id = 3;

UPDATE employee
SET last_name = 'Brahmbhatt'
WHERE id = 1;

UPDATE employee
SET address = 'vastral'
WHERE id = 2;

UPDATE employee
SET first_name = 'Mitesh'
WHERE id = 4;

UPDATE employee
SET mobile_number = '9426529990'
WHERE id = 4;

-- Employee_salary
UPDATE employee_salary
SET salary = 7000.00
WHERE id = 2;

UPDATE employee_salary
SET salary = 9000.00
WHERE fk_employee_id = 1;

UPDATE employee_salary
SET DATE = '2022-01-23'
WHERE fk_employee_id = 3;

UPDATE employee_salary
SET salary = 16000.00
WHERE fk_employee_id = 4;

UPDATE employee_salary
SET salary = 7000.00
WHERE id = 2;

UPDATE employee_salary
SET salary = 9000.00
WHERE id = 1;

UPDATE employee_salary
SET DATE = '2022-01-23'
WHERE id = 3;

UPDATE employee_salary
SET salary = 16000.00
WHERE id = 4;

-- Employee_hobby
UPDATE employee_hobby
SET fk_hobby_id = 1 
WHERE id = 1;

UPDATE employee_hobby
SET fk_hobby_id = 2 
WHERE id = 2;

UPDATE employee_hobby
SET fk_hobby_id = 3 
WHERE id = 3;

UPDATE employee_hobby
SET fk_hobby_id = 4 
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

-- Create a separate select query to get a hobby, employee, employee_salary, employee_hobby
-- Hobby
SELECT * FROM hobby;

-- Employee
SELECT * FROM employee;

-- Employee_salary
SELECT * FROM employee_salary;

-- Employee_hobby
SELECT * FROM employee_hobby;

-- Create a select single query to get all employee name, hobby_name in single column
SELECT CONCAT(first_name, ' ' , last_name) AS NAME FROM employee
UNION
SELECT NAME FROM hobby;

-- Create a select query to get  employee name, his/her employee_salary
SELECT CONCAT(em.first_name, ' ' , em.last_name) AS employee_name, es.salary AS employee_salary FROM employee em INNER JOIN employee_salary es ON em.id = es.fk_employee_id;

