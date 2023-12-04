use world;

-- 1.
select * from city;

-- 2.
select distinct Language from countrylanguage 
order by Language ;

-- 3.
select name, region from country; 

-- 4.
select name city from city 
where countrycode = 'can';

-- 5.
select name,population from country 
where Population > 100000000;

-- 6.
select name from country 
where continent = 'Asia' or continent ='Europe' or 
continent = 'Africa';

-- 7.
select distinct language from countrylanguage
where CountryCode = 'FRA';

-- 8.
select name from city
where id = (select capital from country where Code = 'USA');