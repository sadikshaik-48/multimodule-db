select * from abc.employees

select emp_name, salary from abc.employees
where salary > 7000;

select * from abc.employees
order by salary desc;

select distinct department from abc.employees;

select sum(salary) as total_salary from abc.employees;

select avg(salary) from abc.employees;

select max(salary) from abc.employees;

select min(salary) from abc.employees;

select department, count(*) from abc.employees
group by department;

select department, sum(salary) from abc.employees
group by department;

select department, avg(salary) from abc.employees
group by department;

select department, avg(salary) from abc.employees 
group by department
having avg(salary) > 70000;

select department, count(*) from abc.employees
group by department
having count(*) > 1;

select emp_name from abc.employees t1 join abc.managers t2 on t2.emp_id = t1.emp_id;

select emp_name, salary from abc.employees t1 join abc.managers t2 on t2.emp_id = t1.emp_id;

select * from abc.employees t1 left join abc.managers t2 on t2.emp_id = t1.emp_id;

select emp_name from abc.employees
union
select department from abc.employees;

select emp_name from abc.employees
union all
select department from abc.employees;

create view high_sal as
select emp_name from abc.employees where salary >= 70000;

select * from high_sal; 