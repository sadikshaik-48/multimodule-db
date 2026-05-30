create table lucifer.arena
(
gamer_id int primary key,
gamer_name varchar(30),
mentor_id int 
);
insert into lucifer.arena values
(1,	'Shadow',NULL),
(2,	'Blaze',1),
(3,	'Titan', 1),
(4,	'Ghost', 2),
(5,	'Viper', 2),
(6,	'Falcon', 3),
(7,	'Reaper', 3),
(8,	'Storm', 5)
select * from lucifer.arena;

select 
g.gamer_name as gamer_name,
m.gamer_name as mentor_name
from lucifer.arena g inner join lucifer.arena m on g.mentor_id = m.gamer_id;

select 
g.gamer_name
from lucifer.arena g inner join lucifer.arena m on g.mentor_id = m.gamer_id
where m.gamer_name = 'shadow';

select 
g.gamer_name
from lucifer.arena g inner join lucifer.arena m on g.mentor_id = m.gamer_id
where g.gamer_name like 'g%';

select 
g.gamer_name
from lucifer.arena g inner join lucifer.arena m on g.mentor_id = m.gamer_id
order by g.gamer_name asc;


