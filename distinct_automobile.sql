SELECT * FROM automobile.vehicles;

SELECT DISTINCT type FROM automobile.vehicles;

SELECT DISTINCT company,type FROM automobile.vehicles;

SELECT DISTINCT type, fuel_type FROM automobile.vehicles
WHERE fuel_type = 'petrol';

SELECT DISTINCT model, type, price FROM automobile.vehicles
WHERE price > 10000000;