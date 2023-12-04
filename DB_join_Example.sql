use world;
select 
country.name as "country",
country.population as "country population",
city.name as "Capital",
city.population as "city population",
city.population / country.population as "population percent"
from country join city 
on country.capital = city.id
where country.name="canada";