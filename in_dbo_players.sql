create table players
(
id int primary key,
team varchar(20),
player_role varchar(20)
);
INSERT INTO players (id, team, player_role) VALUES
(1, 'India', 'Batsman'),
(2, 'India', 'Bowler'),
(3, 'Australia', 'Batsman'),
(4, 'Australia', 'All-Rounder'),
(5, 'England', 'Wicket-Keeper');

create table ratings
(
id int,
rating int,
foreign key (id)
references players(id)
);
INSERT INTO ratings (id, rating) VALUES
(1, 95),
(2, 88),
(3, 92),
(4, 90),
(5, 85);
select * from players;
select * from ratings;
select team, rating from players p join ratings r on p.id = r.id;

select team, id from players 
where id in (
select id from ratings);	