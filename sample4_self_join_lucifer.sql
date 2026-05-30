CREATE TABLE lucifer.students
(
    student_id INT PRIMARY KEY,
    student_name VARCHAR(20),
    mentor_id INT
);
INSERT INTO lucifer.students
VALUES
(1, 'Arjun', NULL),
(2, 'Zayn', 1),
(3, 'Kabir', 1),
(4, 'Vihaan', 2),
(5, 'Reyansh', 2),
(6, 'Ishaan', 3),
(7, 'Dev', 3);
select * from lucifer.students;

select 
s.student_name as student_name,
m.student_name as mentor_name
from lucifer.students s inner join lucifer.students m on s.mentor_id = m.student_id;