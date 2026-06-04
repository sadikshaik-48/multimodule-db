select * from org.students;
select * from org.scholarship;
select name, marks from org.students
where marks > (
select avg(marks) from org.students);

select name from org.students
where marks = (
select max(marks) from org.students);

select name from org.students 
where marks < (
select marks from org.students
where name = 'kiran');

select name, marks from org.students 
where marks = (select max(marks) from org.students) or marks = (select min(marks) from org.students);

---------------------------------------------------------------------------------------------------------------
select * from org.students;
select * from org.students;

select name from org.students 
where id in (
select student_id from org.scholarship);

select name from org.students 
where id not in (
select student_id from org.scholarship);

select name, marks from org.students
where id in (
select student_id from org.scholarship)
and marks > 90;

select name from org.students oo
where id not in (
select * from org.scholarship) and marks > 80;



select name from org.students t1 
where exists (
select 1
from org.scholarship t2
where t2.student_id = t1.id);

select name from org.students t1 
where  not exists (
select 1
from org.scholarship t2
where t2.student_id = t1.id);

select name from org.students t1 
where exists (
select 1
from org.scholarship t2
where t2.student_id = t1.id ) and marks > 90;

select name from org.students t1 
where  not exists (
select 1
from org.scholarship t2
where t2.student_id = t1.id) and marks < 80;


select avg(marks) from (
select student_id from org.scholarship)t;

select count(*) from (
select name from org.students where marks > 85)t;

select max(marks) from (
select id from org.scholarship)t;

select marks from org.students
where marks between ( select marks from org.students where name = 'rahul') and ( select marks from org.students where name = 'sneha');

select name from org.students
where marks != (select marks from org.students where name = 'priya');

select name, marks from org.students oo
where exists (select 1
from org.scholarship os
where os.id = oo.student_id);

---------------------------------------------------------------------------------------------------------------

select avg(marks) from (
select marks from org.students
where id in (
select student_id from org.scholarship)
)t;

select max(marks) from (
select marks from org.students 
where marks > 80)t;

select count(*) from (
select marks from org.students 
where marks < 90)t;

select max(marks) from (
select name, marks from org.students
where id in (
select student_id from org.scholarship)
)t;

select count(*) from (
select marks from org.students 
where marks > (select avg(marks) from org.students)
)t;
