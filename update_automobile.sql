select * from automobile.vehicles;

UPDATE automobile.vehicles
set price = 3500000
where company = 'toyota';

UPDATE automobile.vehicles
set fuel_type = 'hybrid'
where company = 'tesla';

UPDATE automobile.vehicles
set torque = '700nm'
where company = 'bmw';

UPDATE automobile.vehicles
set type = 'luxury SUV'
where company = 'mercedes';

UPDATE automobile.vehicles
set price = 9500000, fuel_type = 'electric'
where model = 'Model310';