select * from automobile.vehicles;

select top 5 * from automobile.vehicles
where torque > '680nm'
order by torque desc;

select top 5 * from automobile.vehicles

select top 3 * from automobile.vehicles
order by price asc;

select top 4 company, model, price from automobile.vehicles
order by price desc;

select top 5 * from automobile.vehicles
where type = 'suv';

select top 2 company, model, torque from automobile.vehicles
where fuel_type = 'diesel'
order by torque desc;