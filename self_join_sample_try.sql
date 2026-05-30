CREATE TABLE company.departments
(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(20),
    parent_dept_id INT
);
INSERT INTO company.departments
VALUES
(1, 'Head Office', NULL),
(2, 'Technology', 1),
(3, 'Finance', 1),
(4, 'Development', 2),
(5, 'Testing', 2),
(6, 'Accounts', 3),
(7, 'Audit', 3);
select * from company.departments;

select 
t1.dept_name as department_name,
t2.dept_name as parent_department_name
from company.departments t1 inner join company.departments t2 on  t2.dept_id = t1.parent_dept_id; 