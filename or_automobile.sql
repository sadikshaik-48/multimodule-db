select * from automobile.vehicles;

select * from automobile.vehicles
where fuel_type = 'diesel' or fuel_type = 'electric';

select company, model, price from automobile.vehicles
where company = 'toyota' or company = 'bmw';

select * from automobile.vehicles
where type = 'sedan' or fuel_type = 'petrol';

select company, model, type from automobile.vehicles
where type = 'suv' or price > 5000000;

select * from automobile.vehicles
where company = 'tesla' or fuel_type = 'electric';