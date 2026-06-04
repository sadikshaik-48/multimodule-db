select * from abc.employees
select * from abc.managers

select emp_name, salary, 
case 
when salary >= 80000 then 'high salary'
else 'low salary'
end as salary_status
 from abc.employees;

 select emp_name, salary, 
 case 
 when salary >= 100000 then 'A grade'
 when salary >= 80000 then 'B grade'
 when salary >= 60000 then 'C grade'
 else 'D grade'
 end salary_grade
 from abc.employees;

 select emp_name, department,
 case department 
 when 'it' then 'technical'
 when 'finance' then 'technical'
 when 'hr' then 'administration'
 else 'other'
 end as dept_type
 from abc.employees;

 select emp_name,
 case 
 when emp_id in (select emp_id from abc.managers) then 'manager'
 else 'employee'
 end as 'manager_status'
 from abc.employees

 select sum(
case
when emp_id in
(
select emp_id from abc.managers
)
then salary
else 0
end
)
from abc.employees;

 select count(
 case 
 when salary >= 80000 then 1
 else 0
 end
 ) from abc.employees; 

 select emp_name, salary,
 case 
 when salary >= 100000 then 'huge bonus'
 when salary >= 70000 then 'medium bonus'
 else 'small bonus'
 end bonus_category
from abc.employees;

select emp_name, department, salary, 
case
when emp_id in (select emp_id from abc.managers) and salary >= 100000 then 'senior manager'
when emp_id in (select emp_id from abc.managers) and salary < 100000 then 'manager'
when emp_id not in (select emp_id from abc.managers) and salary <= 80000 then 'senior employee'
else 'employee'
end employee_level
from abc.employees;


----------------------------------------------------------------------------------------------------------------

select count(*)
from abc.employees
where emp_id in( select emp_id from abc.managers);

select count(*) from abc.employees
where emp_id in (select emp_id from abc.managers)

select sum(salary) from abc.employees
where emp_id in (select emp_id from abc.managers);

select count(
case 
when salary >= 70000 then 1
end
)
from abc.employees;

select sum(
case 
when salary >= 70000 then salary
else 0
end
)
from abc.employees;

select sum(salary)
from abc.employees
where department = 'it';

select sum(
case 
when department = 'it' then salary 
else 0
end
) as it_emps_salary
from abc.employees;

select sum(salary) from abc.employees
where emp_id not in 
(select emp_id from abc.managers);

select emp_name, salary, 
case
when salary >= 100000 then 'elite'
when salary >= 70000 then 'senior'
when salary >= 50000 then 'mid'
else 'junior'
end as salary_band
from abc.employees;

select emp_name, department, salary, 
case 
when emp_id in(select emp_id from abc.managers) and salary >=100000 then 'director'
when emp_id in(select emp_id from abc.managers) and salary < 100000 then 'manager'
when department = 'it' and salary >= 100000 then 'lead engineer'
when department = 'finance' and salary >= 80000 then 'finance lead'
else 'staff'
end as role_level
from abc.employees;
