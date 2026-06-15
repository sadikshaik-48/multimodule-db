CREATE TABLE org.workers
(
    emp_id INT,
    emp_name VARCHAR(30),
    dept_id INT,
    salary INT
);

INSERT INTO org.workers
VALUES
(1,'Alex',101,50000),
(2,'Brian',102,70000),
(3,'Cathy',101,90000),
(4,'David',103,120000),
(5,'Emma',104,60000),
(6,'Frank',NULL,40000);

CREATE TABLE org.sections
(
    dept_id INT,
    dept_name VARCHAR(30)
);

INSERT INTO org.sections
VALUES
(101,'IT'),
(102,'HR'),
(103,'Finance'),
(105,'Marketing');
 select * from org.workers
 select * from org.sections; 

 ----------------------------------------------------------------------------------------------------------------------
 select emp_name, t1.dept_id from org.workers t1 inner join org.sections t2 on t2.dept_id = t1.dept_id;

 select emp_name, dept_name, salary from org.workers t1 inner join org.sections t2 on t2.dept_id = t1.dept_id;

 select emp_name, dept_name from org.workers t1 left join org.sections t2 on t2.dept_id = t1.dept_id;

 select dept_name, emp_name from org.workers t1 right join org.sections t2 on t2.dept_id = t1.dept_id;

 select emp_name, dept_name from org.workers t1 full join org.sections t2 on t2.dept_id = t1.dept_id;

 select emp_name, dept_name from org.workers t1 left join org.sections t2 on t2.dept_id = t1.dept_id
  where dept_name is null;

 select dept_name, emp_name from org.workers t1 right join org.sections t2 on t2.dept_id = t1.dept_id
 where emp_name is null;

 select emp_name, dept_name, salary from org.workers t1 inner join org.sections t2 on t2.dept_id = t1.dept_id
 where dept_name = 'it';

 select dept_name, count(*) from org.workers t1 full join org.sections t2 on t2.dept_id = t1.dept_id
 group by dept_name
 having count(*) > 1;

 select dept_name, sum(salary) as total_salary from org.workers t1 full join org.sections t2 on t2.dept_id = t1.dept_id
 group by dept_name;
 
 select emp_name, t2.dept_id from org.workers t1 right join org.sections t2 on t2.dept_id = t1.dept_id;

 