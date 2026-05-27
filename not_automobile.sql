select * from automobile.vehicles;

select * from automobile.vehicles
where not fuel_type = 'diesel';

select company, model from automobile.vehicles
where not company = 'toyota';

select * from automobile.vehicles
where not type = 'suv';

select company, model, fuel_type from automobile.vehicles
where not fuel_type = 'electric' and type = 'sedan'; 

select * from automobile.vehicles
where not company = 'bmw' or fuel_type = 'electric';