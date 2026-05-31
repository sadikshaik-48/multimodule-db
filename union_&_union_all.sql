select count(*) as total_records
from 
(
select movie_id, movie_name from entertainment.movies
union
select id, company from automobile.vehicles
);

select genre from entertainment.movies
union all
select type from automobile.vehicles;

