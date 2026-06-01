create table org.students
(
id int primary key,
name varchar(20),
marks int
);
INSERT INTO org.students VALUES
(1, 'Rahul', 85),
(2, 'Priya', 92),
(3, 'Amit', 78),
(4, 'Sneha', 95),
(5, 'Kiran', 88);
select * from org.students;

select id, name, marks from org.students
where marks = 
(
select max(marks) from org.students
);

select id, name, marks from org.students
where marks > 
(
select avg(marks) from org.students
);

select max(marks) as second_highest_marks from org.students
where marks <
(
select max(marks) from org.students
);

----------------------------------------------------------------------------------------------

select name, marks from org.students
where marks > (
select avg(marks) from org.students
);

select name, marks from org.students
where marks = (
select max(marks) from org.students
);

select name, marks from org.students
where marks = (
select min(marks) from org.students
);

select name, marks from org.students 
where marks = (
select max(marks) from org.students)
or 
marks = (
select min(marks) from org.students);

select name from org.students
where marks >(
select marks from org.students 
where name = 'kiran');

select name from org.students
where marks < (
select marks from org.students 
where name = 'priya');

select name , marks from org.students
where marks > (
select marks from org.students 
where name = 'rahul');

select name, marks from org.students
where marks < (
select avg(marks) from org.students);

select name, marks from org.students
where marks != (
select max(marks) from org.students);

select name from org.students
where marks between 
(select marks from org.students where name = 'rahul') 
and
(select marks from org.students where name = 'priya');

select name, marks from org.students
where marks > (select min(marks) from org.students) and marks < (select max(marks) from org.students);

select name from org.students
where marks = (select marks from org.students where name = 'kiran');

select name from org.students 
where marks > (select marks from org.students where name = 'rahul') and marks < (select marks from org.students where name = 'sneha');

select name from org.students 
where marks != (select marks from org.students where name = 'priya');

select name from org.students 
where marks = (select marks from org.students where name = 'rahul') or marks = (select marks from org.students where name = 'kiran');