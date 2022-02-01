-- Table Query

-- job
CREATE TABLE `job` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `min_salary` decimal(10,2) NOT NULL,
  `max_salary` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- country
CREATE TABLE `country` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- department
CREATE TABLE `department` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `fk_country_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_country_id` (`fk_country_id`),
  CONSTRAINT `fk_country_id` FOREIGN KEY (`fk_country_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- employee
CREATE TABLE `employee` (
  `id` int NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `fk_department_id` int NOT NULL,
  `fk_job_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_department_id` (`fk_department_id`),
  KEY `fk_job_id` (`fk_job_id`),
  CONSTRAINT `fk_department_id` FOREIGN KEY (`fk_department_id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_job_id` FOREIGN KEY (`fk_job_id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Select Query
-- job
SELECT * FROM job;

-- country
SELECT * FROM country;

-- department
SELECT * FROM department;

-- employee
SELECT * FROM employee;

-- Insert Query
-- job
INSERT INTO job(NAME, min_salary, max_salary)
VALUES
	('Pranav', 50000.00, 100000.00),
	('Pratham', 40000.00, 80000.00),
	('Varshil', 30000.00, 60000.00);
	
-- country
INSERT INTO country(NAME)
VALUES 
	('USA'),
	('Canada'),
	('Latvia');

-- department
INSERT INTO department(NAME, fk_country_id)
VALUES 
	('Cloude Computing', 1),
	('Stock Market', 2),
	('Software enginner', 3);
	
-- employee
INSERT INTO employee(firstname, lastname, email, salary, fk_department_id, fk_job_id)
VALUES 
	('Pranav', 'Barot', 'pbarot498@gmail.com', 80000.00, 1, 1),
	('Pratham', 'Brahmbhatt', 'prathambrahmbhatt2484@gmail.com', 60000.00, 2, 2),
	('Varshil', 'Fichadiya', 'varshilsoni1837@gmail.com', 50000.00, 3, 3);