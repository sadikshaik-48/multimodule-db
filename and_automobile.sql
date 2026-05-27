select * from automobile.vehicles;

select model, cc from automobile.vehicles
where price > 2000000 AND type = 'sedan';

select model, cc from automobile.vehicles
where type = 'suv' AND fuel_type = 'diesel';

select company, model, price from automobile.vehicles
where fuel_type = 'petrol' and price > 2000000;

select * from automobile.vehicles
where company = 'toyota' and type = 'suv';

select company, model, torque from automobile.vehicles
where fuel_type = 'diesel';

select * from automobile.vehicles
where fuel_type = 'electric' and type = 'sedan';