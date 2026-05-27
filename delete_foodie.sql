select * from foodie;

DELETE from foodie
where category = 'dessert';

DELETE from foodie
where category ='streetfood';

DELETE from foodie
where price < 100; 

DELETE from foodie
where taste = 'spicy' and category = 'maincourse';

DELETE from foodie
where best_place = 'mumbai' or category = 'snack';