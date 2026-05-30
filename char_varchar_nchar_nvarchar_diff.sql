create table lucifer.sample
(
name char(10), 
-- (-         )
branch nchar(10),
-- (-         )
group_st varchar(10),
-- (-)
college_name nvarchar(10)
-- (-)
);
insert into lucifer.sample
values ('-', N'नरेश', N'नरेश', N'नरेश');
select * from lucifer.sample;

SELECT N'नरेश' AS HindiText;
