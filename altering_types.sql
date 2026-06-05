CREATE TABLE test.students
(
    student_id INT,
    student_name VARCHAR(30)
);
SELECT * FROM test.students;

alter table test.students
add age int;

alter table test.students
add bio text;

alter table test.students
drop column age;

SELECT * FROM test.students;

alter table test.students
alter column student_name varchar(50);
------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE test.courses
(
    course_id INT not null,
    course_name VARCHAR(30)
);

alter table test.courses
add constraint pk_courses
primary key(course_id);

select * from test.courses

------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE test.departments
(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(30)
);

CREATE TABLE test.employees
(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(30),
    dept_id INT
);

alter table test.employees
add constraint fk_emp
foreign key (dept_id)
references test.departments(dept_id);

alter table test.employees
drop constraint fk_emp ;