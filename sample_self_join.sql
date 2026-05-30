create table org.sadik
(
st_id int primary key,
st_name varchar(20)
);
insert into org.sadik (st_id, st_name) values (101, 'Rahul');
insert into org.sadik (st_id, st_name) values (102, 'Priya');
insert into org.sadik (st_id, st_name) values (103, 'Arjun');
insert into org.sadik (st_id, st_name) values (104, 'Neha');
insert into org.sadik (st_id, st_name) values (105, 'Kiran');
select * from org.sadik;
 create table org.details
 (
 st_id int,
 st_branch varchar(20)
 foreign key (st_id)
 references org.sadik(st_id)
 );
 insert into org.details (st_id, st_branch) values (101, 'CSE');
insert into org.details (st_id, st_branch) values (102, 'ECE');
insert into org.details (st_id, st_branch) values (103, 'MECH');
insert into org.details (st_id, st_branch) values (104, 'CIVIL');
insert into org.details (st_id, st_branch) values (105, 'IT');
select * from org.details;

select * from org.sadik t1 join org.details t2 on t1.st_id = t2.st_id;
