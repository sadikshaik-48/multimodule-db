CREATE TABLE employees (
    emp_id INT PRIMARY KEY IDENTITY(1,1),
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);

INSERT INTO employees (emp_name, department, salary, city) VALUES
('John Smith', 'IT', 75000, 'New York'),
('Emma Johnson', 'HR', 62000, 'Chicago'),
('Liam Brown', 'Finance', 81000, 'Los Angeles'),
('Olivia Davis', 'Marketing', 67000, 'Houston'),
('Noah Wilson', 'Sales', 59000, 'Phoenix'),
('Ava Martinez', 'IT', 92000, 'Seattle'),
('William Anderson', 'Finance', 88000, 'Boston'),
('Sophia Taylor', 'HR', 61000, 'Denver'),
('James Thomas', 'Marketing', 72000, 'Miami'),
('Isabella Moore', 'Sales', 56000, 'Dallas'),
('Benjamin Jackson', 'IT', 98000, 'San Francisco'),
('Mia White', 'Finance', 79000, 'Atlanta'),
('Lucas Harris', 'Operations', 64000, 'Detroit'),
('Charlotte Martin', 'HR', 60000, 'Austin'),
('Henry Thompson', 'IT', 85000, 'San Diego'),
('Amelia Garcia', 'Marketing', 71000, 'Las Vegas'),
('Alexander Martinez', 'Sales', 58000, 'Orlando'),
('Evelyn Robinson', 'Finance', 83000, 'Philadelphia'),
('Daniel Clark', 'Operations', 69000, 'Portland'),
('Harper Rodriguez', 'IT', 95000, 'San Jose'),
('Michael Lewis', 'HR', 63000, 'Nashville'),
('Abigail Lee', 'Marketing', 74000, 'Charlotte'),
('Ethan Walker', 'Sales', 61000, 'Columbus'),
('Ella Hall', 'Finance', 87000, 'Indianapolis'),
('Jacob Allen', 'Operations', 66000, 'Kansas City');

SELECT emp_name,department, salary FROM employees
WHERE department = 'IT';

SELECT emp_name, salary FROM employees
WHERE salary > 50000;

SELECT emp_name FROM employees
WHERE city = 'dallas';

SELECT emp_name, salary FROM employees
WHERE salary < 80000;




