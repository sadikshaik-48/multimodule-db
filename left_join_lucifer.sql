CREATE TABLE lucifer.employees
(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(20),
    department VARCHAR(20)
);

INSERT INTO lucifer.employees
VALUES
(1, 'Rahul', 'IT'),
(2, 'Aman', 'HR'),
(3, 'Priya', 'IT'),
(4, 'Sneha', 'Finance'),
(5, 'Rohit', 'Marketing'),
(6, 'Karan', 'IT');
select * from lucifer.employees;


CREATE TABLE lucifer.salaries
(
    emp_id INT,
    salary INT,

    FOREIGN KEY (emp_id)
    REFERENCES lucifer.employees(emp_id)
);

INSERT INTO lucifer.salaries
VALUES
(1, 50000),
(2, 45000),
(3, 60000),
(4, 70000),
(6, 55000);

select * from lucifer.salaries;


select * from lucifer.employees le left join  lucifer.salaries ls on le.emp_id = ls.emp_id;

select le.emp_name, ls.salary from lucifer.employees le left join lucifer.salaries ls on le.emp_id = ls.emp_id;

select le.emp_name,le.department,ls.salary from lucifer.employees le left join lucifer.salaries ls on le.emp_id = ls.emp_id
where department = 'it';

select le.emp_name, ls.salary from lucifer.employees le left join lucifer.salaries ls on le.emp_id = ls.emp_id
where emp_name like 'r%';

select le.emp_name, ls.salary from lucifer.employees le left join lucifer.salaries ls on le.emp_id = ls.emp_id
order by salary desc;

select le.emp_name, le.department, ls.salary from lucifer.employees le left join lucifer.salaries ls on le.emp_id = ls.emp_id
where department in ('it', 'finance');