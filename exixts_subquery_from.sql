CREATE TABLE org.employees
(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(20)
);

INSERT INTO org.employees
VALUES
(1, 'Alex'),
(2, 'Brian'),
(3, 'Cathy'),
(4, 'David'),
(5, 'Emma');

CREATE TABLE org.projects
(
    project_id INT PRIMARY KEY,
    emp_id INT
);

INSERT INTO org.projects
VALUES
(101, 1),
(102, 1),
(103, 3),
(104, 5);

select * from org.employees
select * from org.projects

select emp_name from org.employees
where exists (
select * from org.projects
where org.employees.emp_id = org.projects.emp_id);

select emp_name from org.employees oe 
where  not exists (
select * from 
org.projects op
where op.emp_id = oe.emp_id);

select emp_id, emp_name from org.employees oe
where exists (
select * from org.projects op 
where op.emp_id = oe.emp_id);

select emp_name from org.employees oe
where not exists (
select * from org.projects op
where op.emp_id = oe.emp_id);

select emp_id from org.employees oe
where exists (
select 1
from org.projects od
where od.emp_id = oe.emp_id and oe.emp_id = 1);

select genre, collection_cr from entertainment.movies
union 
select company, price from automobile.vehicles

select * from org.students

select avg(average_marks) from(
select marks as average_marks from org.students)t; 

select max(marks) from (
select marks from org.students)t;

select count(*) from (
select id from org.students)t;

select avg(marks) from (
select name, marks from org.students temp_table)t;

select sum(marks) from (
select marks from org.students)t;

select name, marks from org.students
where marks > (
select marks from org.students where name = 'rahul');


select avg(marks) from (
select marks from org.students)t;

select count(*) from (
select marks from org.students where marks < 90)temp_table;

select max(marks) from (
select marks from org.students where marks > 80)t;
