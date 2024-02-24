create schema cars;
use cars;
-- READ DATA--
Select * from car_dekho;

-- Total Cars: To get a count of total records--
select count(*) from car_dekho;

-- The manager assked  the employee How many cars will be available in 2023?--
select count(*) from car_dekho where year = 2023;

-- The manager asked employee How many cars avilable in 2020,2021,2022
-- use groupby--
select count(*) from car_dekho where year in (2020,2021,2022) group by year;

-- Client asked me to print the total of all the cars by year . I don't see all the 
select year, count(*) from car_dekho group by year;

-- client asked to car dealer agent how many diesel cars will there be in 2020?
select  count(*) from car_dekho where year = 2020 and fuel = "Diesel";
select  count(*) from car_dekho where year = 2020 and fuel = "Petrol";
-- The manger told the employee to give a print All the fuel cars come by all year 
select year, count(*) from car_dekho  where fuel = "Petrol" group by year; 
select year, count(*) from car_dekho group by year having count(*)>100;
select year, count(*) from car_dekho group by year having count(*)<50;
select count(*) from car_dekho where year between 2015 and 2023;
select * from car_dekho where year between 2020 and 2023;