CREATE TABLE class (
    student_id INT PRIMARY KEY IDENTITY(1,1),
    student_name VARCHAR(100),
    department VARCHAR(50),
    age INT,
    marks INT,
    city VARCHAR(50)
);

INSERT INTO class (student_name, department, age, marks, city) VALUES
('Arjun', 'CSE', 20, 85, 'Chennai'),
('Priya', 'ECE', 21, 78, 'Bangalore'),
('Rahul', 'CSE', 22, 91, 'Mumbai'),
('Sneha', 'EEE', 20, 67, 'Hyderabad'),
('Karan', 'MECH', 23, 72, 'Delhi'),
('Divya', 'CSE', 21, 88, 'Chennai'),
('Vikram', 'ECE', 22, 95, 'Pune'),
('Anjali', 'CIVIL', 20, 81, 'Kolkata'),
('Rohit', 'MECH', 24, 60, 'Delhi'),
('Meera', 'CSE', 21, 76, 'Bangalore'),
('Sanjay', 'EEE', 22, 69, 'Chennai'),
('Pooja', 'ECE', 20, 84, 'Mumbai'),
('Aman', 'CSE', 23, 92, 'Hyderabad'),
('Neha', 'CIVIL', 21, 74, 'Pune'),
('Ajay', 'MECH', 22, 66, 'Chennai');

SELECT student_name FROM class
WHERE department = 'CSE';

SELECT student_name AS majors FROM class
WHERE age >= 18;

SELECT student_name AS minors FROM class
WHERE age <= 18;

SELECT student_name AS Toppers FROM class
WHERE marks BETWEEN 95 AND 100;

SELECT student_name FROM class
WHERE student_name LIKE 'A%';

SELECT student_name FROM class
WHERE student_name LIKE '%A';

SELECT student_name FROM class
WHERE student_name LIKE '%HA%';

SELECT student_name FROM class
WHERE department IN ('CSE', 'ECE');
