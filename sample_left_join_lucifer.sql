create table lucifer.friends
(
friend_id int primary key,
friend_name varchar(20)
);
insert into lucifer.friends
values(1, 'ram'), (2, 'aman'), (3, 'joe'), (4, 'tom');
insert into lucifer.friends
values(5, 'alex');
select * from lucifer.friends;


create table lucifer.details
(
friend_id int,
cars_own varchar(20),
foreign key (friend_id)
references lucifer.friends(friend_id)
);
insert into lucifer.details
values(1, 'skoda'), (1, 'VW'), (2, 'MG'), (3, 'BMW'), (4, 'JEEP');
select * from lucifer.details;

select * from lucifer.friends lf left JOIN lucifer.details ld on lf.friend_id = ld.friend_id;
select lf.friend_name, ld.cars_own from lucifer.friends lf left join lucifer.details ld on lf.friend_id = ld.friend_id
where friend_name like 'a%';