CREATE TABLE abc.employees
(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(30),
    department VARCHAR(20),
    salary INT
);

INSERT INTO abc.employees
VALUES
(1,'Alex','IT',50000),
(2,'Brian','HR',70000),
(3,'Cathy','Finance',90000),
(4,'David','IT',120000),
(5,'Emma','Marketing',60000);

CREATE TABLE abc.managers
(
    emp_id INT
);

INSERT INTO abc.managers
VALUES
(2),
(4);

select * from abc.employees
select * from abc.managers

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


select emp_name, salary, 
case 
when salary >= 100000 then 'Executive'
when salary >= 70000  then 'Senior'
else 'Junior'
end as 'salary grade'
from abc.employees;

select emp_name, department, 
case
when department = 'it' then 'technical'
when department = 'finance' then 'business'
when department = 'hr' then 'operations'
else 'others'
end 'dept_region'
from abc.employees;

select emp_name,
case 
when salary >= 80000 then 1
else 0
end as high_salary_flag
from abc.employees;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select emp_name, salary, 
case 
when salary > (select avg(salary) from abc.employees) then 'avove average'
else  'below average'
end salary_status
from abc.employees;

select emp_name, salary,
case 
when salary > (select salary from abc.employees where emp_name = 'emma') then 'higher than emma'
else 'not higher than emma'
end as 'comparison'
from abc.employees;

select emp_name, 
case 
when emp_id in (select emp_id from abc.managers) then 'manager'
else 'employee'
end as 'role'
from abc.employees;

select emp_name, salary,
case 
when emp_id in (select emp_id from abc.managers) and salary > (select avg(salary) from abc.employees) then 'top manager'
when emp_id in (select emp_id from abc.managers) and salary <= (select avg(salary) from abc.employees) then 'manager'
else 'staff'
end as 'category'
from abc.employees;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select * from abc.employees
order by
case
when department = 'it' then 1
when department = 'finance' then 2
else 3
end;

select * from abc.employees
order by 
case 
when salary >= 100000 then 1
when salary >= 70000 then 2
else 3
end;

select * from abc.employees
order by 
case 
when emp_id in (select emp_id from abc.managers) then 1
else 2
end;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT
    CASE
        WHEN salary >= 80000 THEN 'High Salary'
        ELSE 'Low Salary'
    END AS salary_type,

    COUNT(*) AS employee_count

FROM abc.employees

GROUP BY
    CASE
        WHEN salary >= 80000 THEN 'High Salary'
        ELSE 'Low Salary'
    END;


select 
case 
when salary >= 80000 then 'high salary'
else 'low salary'
end as salary_type,
avg(salary) as average_salary
from abc.employees
group by 
case 
when salary >= 80000 then 'high salary'
else 'low salary'
end;

select
case 
when salary >= 80000 then 'high salary'
else 'low salary'
end as salary_type,
sum(salary) as total_salary
from abc.employees
group by 
case 
when salary >= 80000 then 'high salary'
else 'low salary'
end;

