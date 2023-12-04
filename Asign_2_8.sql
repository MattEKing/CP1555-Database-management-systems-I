use world;
select name from city
where id = (select capital from country where Code = 'USA');