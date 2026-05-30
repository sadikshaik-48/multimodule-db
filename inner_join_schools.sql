CREATE TABLE schools.students
(
    student_id INT PRIMARY KEY,
    student_name VARCHAR(20)
);

INSERT INTO schools.students
VALUES
(1, 'Rahul'),
(2, 'Aman'),
(3, 'Priya'),
(4, 'Sneha'),
(5, 'Rohit'),
(6, 'jerry');
select * from schools.students;

CREATE TABLE schools.courses
(
    student_id INT,
    course_name VARCHAR(20),

    FOREIGN KEY (student_id)
    REFERENCES schools.students(student_id)
);

INSERT INTO schools.courses
VALUES
(1, 'SQL'),
(1, 'Python'),
(2, 'Java'),
(3, 'SQL'),
(4, 'PowerBI');
select * from schools.courses;

SELECT *
FROM schools.students s
INNER JOIN schools.courses c
ON s.student_id = c.student_id;

select student_name, course_name from schools.students ss inner join schools.courses sc on ss.student_id = sc.student_id;

select student_name, course_name from schools.students ss inner join schools.courses sc on ss.student_id = sc.student_id
where course_name = 'sql';

select student_name, course_name from schools.students ss inner join schools.courses sc on ss.student_id = sc.student_id
order by student_name asc;

select student_name, course_name from schools.students ss inner join schools.courses sc on ss.student_id = sc.student_id
where student_name like 'p%'
order by course_name desc;

select ss.student_name, sc.course_name from schools.students ss inner join schools.courses sc on ss.student_id = sc.student_id
where student_name like 'a%' or course_name = 'sql'
order by student_name asc;

select student_name, course_name from schools.students ss inner join schools.courses sc on ss.student_id = sc.student_id;
