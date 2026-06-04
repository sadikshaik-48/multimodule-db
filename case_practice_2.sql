create table abc
(
abc_id int primary key,
name varchar(30)
);

create table def
(
abc_id int,
values_def varchar(20),
foreign key (abc_id)
references abc(abc_id)
);