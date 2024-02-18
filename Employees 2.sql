-- CREATE DATABASE Employee_management_DB;

-- USE Employee_management_DB;

-- CREATE TABLE employee(
-- id INT PRIMARY KEY AUTO_INCREMENT,
-- first_name VARCHAR(100) NOT NULL,
-- last_name VARCHAR(100) NOT NULL,
-- birthday DATE NOT NULL,
-- email VARCHAR(100) NOT NULL,
-- hire_date DATE);

-- CREATE TABLE departments(
-- department_id INT,
-- department_name VARCHAR(100)NOT NULL,
-- employee_id INT,
-- FOREIGN KEY (employee_id) REFERENCES employee(id)
-- );

-- CREATE TABLE salaries(
-- salary_amount DECIMAL(8,2) NOT NULL,
-- employee_id INT,
-- FOREIGN KEY (employee_id) REFERENCES employee(id)
-- );
-- INSERT INTO employee (first_name, last_name, birthday, email, hire_date)
-- VALUES
-- ('John', 'Smith', '1985-03-15', 'john.smith@example.com', '2010-06-20'),
-- ('Emily', 'Johnson', '1990-07-10', 'emily.johnson@example.com', '2015-02-12'),
-- ('Michael', 'Williams', '1982-11-28', 'michael.williams@example.com', '2008-09-05'),
-- ('Jessica', 'Brown', '1979-09-03', 'jessica.brown@example.com', '2005-12-18'),
-- ('David', 'Jones', '1977-05-20', 'david.jones@example.com', '2004-08-30'),
-- ('Sarah', 'Miller', '1995-01-12', 'sarah.miller@example.com', '2020-03-25'),
-- ('Christopher', 'Davis', '1988-04-07', 'chris.davis@example.com', '2012-10-15'),
-- ('Amanda', 'Garcia', '1984-08-22', 'amanda.garcia@example.com', '2009-11-28'),
-- ('James', 'Rodriguez', '1981-12-30', 'james.rodriguez@example.com', '2007-06-08'),
-- ('Jennifer', 'Martinez', '1993-06-17', 'jennifer.martinez@example.com', '2018-09-14'),
-- ('Robert', 'Hernandez', '1976-02-25', 'robert.hernandez@example.com', '2003-04-21'),
-- ('Ashley', 'Lopez', '1998-10-05', 'ashley.lopez@example.com', '2022-01-10'),
-- ('Matthew', 'Gonzales', '1989-07-01', 'matthew.gonzales@example.com', '2013-08-17'),
-- ('Amanda', 'Wilson', '1980-03-18', 'amanda.wilson@example.com', '2006-05-29'),
-- ('Daniel', 'Perez', '1978-09-14', 'daniel.perez@example.com', '2002-10-03'),
-- ('Elizabeth', 'Torres', '1991-04-28', 'elizabeth.torres@example.com', '2016-12-05'),
-- ('Kevin', 'Hill', '1987-11-09', 'kevin.hill@example.com', '2011-07-22'),
-- ('Lauren', 'Flores', '1994-08-14', 'lauren.flores@example.com', '2019-04-03'),
-- ('Jason', 'Ramirez', '1974-06-23', 'jason.ramirez@example.com', '2001-02-14'),
-- ('Kimberly', 'Scott', '1983-01-09', 'kimberly.scott@example.com', '2008-11-19');

-- INSERT INTO departments ( department_id, department_name, employee_id)VALUES
-- (101, 'Sales', 1),
-- (102, 'Marketing', 2),
-- (103, 'Human_Resources', 3),
-- (104, 'Finance', 4),
-- (105, 'IT', 5),
-- (106, 'Operations', 6),
-- (101, 'Sales', 7),
-- (102, 'Marketing', 8),
-- (103, 'Human_Resources', 9),
-- (104, 'Finance', 10),
-- (105, 'IT', 11),
-- (106, 'Operations', 12),
-- (101, 'Sales', 13),
-- (102, 'Marketing', 14),
-- (103, 'Human_Resources', 15),
-- (104, 'Finance', 16),
-- (105, 'IT', 17),
-- (106, 'Operations',18),
-- (101, 'Sales', 19),
-- (102, 'Marketing', 20);
-- SELECT * FROM departments;

-- SELECT first_name, last_name, department_id, department_name FROM employee
-- JOIN departments ON employee.id = employee_id 
-- WHERE department_id = '106';
-- INSERT INTO salaries( salary_amount, employee_id) VALUES
-- (60000, 1),
-- (65000, 2),
-- (70000, 3),
-- (75000, 4),
-- (80000, 5),
-- (70000, 6),
-- (65000, 7),
-- (70000, 8),
-- (75000, 9),
-- (80000, 10),
-- (85000, 11),
-- (75000, 12),
-- (70000, 13),
-- (75000, 14),
-- (80000, 15),
-- (85000, 16),
-- (90000, 17),
-- (80000, 18),
-- (75000, 19),
-- (80000, 20);

-- SELECT AVG(salary_amount) FROM salaries;
SELECT first_name, last_name, MAX(salary_amount) AS Highest_Paid FROM salaries
JOIN employee ON employee.id = employee_id 
GROUP BY first_name, last_name, salary_amount
ORDER BY salary_amount DESC;




