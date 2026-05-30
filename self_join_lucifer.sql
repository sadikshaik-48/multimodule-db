CREATE TABLE lucifer.projects
(
    project_id INT PRIMARY KEY,
    project_name VARCHAR(20),
    parent_project_id INT
);
INSERT INTO lucifer.projects
VALUES
(1, 'ERP', NULL),
(2, 'Frontend', 1),
(3, 'Backend', 1),
(4, 'ReactUI', 2),
(5, 'AdminPanel', 2),
(6, 'API', 3),
(7, 'Database', 3),
(8, 'AuthModule', 6);

select
t1.project_name as project_name,
t2.project_name as parent_project_name
from lucifer.projects t1 join lucifer.projects t2 on t2.project_id = t1.parent_project_id;

select
t1.project_name as project_name,
t2.project_name as parent_project_name
from lucifer.projects t1 join lucifer.projects t2 on t2.project_id = t1.parent_project_id
where t2.project_name = 'frontend';

select
t1.project_name as project_name,
t2.project_name as parent_project_name
from lucifer.projects t1 join lucifer.projects t2 on t2.project_id = t1.parent_project_id
where t1.project_name like 'a%';

select
t1.project_name as project_name,
t2.project_name as parent_project_name
from lucifer.projects t1 join lucifer.projects t2 on t2.project_id = t1.parent_project_id
order by t1.project_name;

select
t1.project_name as project_name
from lucifer.projects t1 join lucifer.projects t2 on t2.project_id = t1.parent_project_id
where t2.project_name = 'backend';

------------------------------------------------------------------------------------------------

select
t1.project_name as project_name,
t2.project_name as parent_project_name
from lucifer.projects t1 join lucifer.projects t2 on t2.project_id = t1.parent_project_id
where t1.project_name like 'd%' or t2.project_name = 'frontend';

select
t1.project_name as project_name,
t2.project_name as parent_project_name
from lucifer.projects t1 join lucifer.projects t2 on t2.project_id = t1.parent_project_id
where t1.project_name not like 'a%'
order by t2.project_name desc;

select
t1.project_name as project_name,
t2.project_name as parent_project_name
from lucifer.projects t1 join lucifer.projects t2 on t2.project_id = t1.parent_project_id
where t2.project_name in ('frontend', 'backend')
order by t1.project_name;