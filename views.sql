create view
managers as
select emp_name from abc.employees
where emp_id in (select emp_id from abc.managers);


create view high_salary_emp as 
select emp_name from abc.employees
where salary >= 70000;

select * from managers
select * from high_salary_emp
