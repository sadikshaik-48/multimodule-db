select movie_name, rating,
case
when rating between 4 and 4.2 then 'average movie'
when rating between 4.3 and 4.5 then 'good movie'
when rating between 4.6 and 4.7 then 'hit movie'
when rating between 4.8 and 5 then 'blockbuster movie'
end as 'movie status'
from entertainment.movies
order by rating desc;	

----------------------------------------------------------------------------------------

select movie_name, rating,
case 
when rating >= 4.5 then 'Excellent'
Else 'Average'
end as 'movie_status'
from entertainment.movies;

select movie_name, collection_cr,
case
when collection_cr >= 1000 then 'blockbuster'
else 'normal'
end as 'collection_status'
from entertainment.movies
order by collection_cr desc;

select movie_name, collection_cr,
case 
when collection_cr >= 1500 then 'Industry Hit'
when collection_cr >= 1000 then 'Super Hit'
when collection_cr >= 500  then 'Hit'
Else 'Average'
end as 'success_level'
from entertainment.movies;

select movie_name, language,
case 
when language = 'tamil' then 'south'
when language = 'telugu' then 'south'
else 'others'
end as 'language_region'
from entertainment.movies;

select movie_name, rating,
case
when rating >= 4.8 then 'Masterpiece'
when rating >= 4.5 then 'Excellent'
when rating >= 4.0 then 'Good'
Else 'Average'
end as 'movie_review'
from entertainment.movies
order by rating desc;


----------------------------------------------------------------------------------------

select min(rating) from entertainment.movies
select max(rating) from entertainment.movies