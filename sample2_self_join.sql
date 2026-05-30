CREATE TABLE lucifer.trainers
(
    trainer_id INT PRIMARY KEY,
    trainer_name VARCHAR(20),
    senior_trainer_id INT
);
INSERT INTO lucifer.trainers
VALUES
(1, 'Marcus', NULL),
(2, 'Leon', 1),
(3, 'Victor', 1),
(4, 'Ryder', 2),
(5, 'Axel', 2),
(6, 'Drake', 3),
(7, 'Zane', 3),
(8, 'Orion', 5);

select 
t1.trainer_name as trainer_name,
t2.trainer_name as sr_trainer_name
from lucifer.trainers t1 join lucifer.trainers t2 on t2.trainer_id = t1.senior_trainer_id;

select 
t1.trainer_name as trainer_name,
t2.trainer_name as sr_trainer_name
from lucifer.trainers t1 join lucifer.trainers t2 on t2.trainer_id = t1.senior_trainer_id
where t2.trainer_name = 'leon';

select 
t1.trainer_name as trainer_name,
t2.trainer_name as sr_trainer_name
from lucifer.trainers t1 join lucifer.trainers t2 on t2.trainer_id = t1.senior_trainer_id
where t1.trainer_name like 'd%';

select 
t1.trainer_name as trainer_name,
t2.trainer_name as sr_trainer_name
from lucifer.trainers t1 join lucifer.trainers t2 on t2.trainer_id = t1.senior_trainer_id
order by t1.trainer_name desc;

select 
t1.trainer_name as trainer_name
from lucifer.trainers t1 join lucifer.trainers t2 on t2.trainer_id = t1.senior_trainer_id
where t2.trainer_name = 'Marcus';

select 
t1.trainer_name as trainer_name,
t2.trainer_name as sr_trainer_name
from lucifer.trainers t1 join lucifer.trainers t2 on t2.trainer_id = t1.senior_trainer_id
where t1.trainer_name like 'a%' or t2.trainer_name = 'victor';

select 
t1.trainer_name as trainer_name,
t2.trainer_name as sr_trainer_name
from lucifer.trainers t1 join lucifer.trainers t2 on t2.trainer_id = t1.senior_trainer_id
where t1.trainer_name not like 'r%'
order by t2.trainer_name;


