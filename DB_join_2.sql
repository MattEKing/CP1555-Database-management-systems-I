use world;
select
	country.name,
	countrylanguage.language
	from country join countrylanguage
		on countrylanguage.countrycode = country.code
	where IsOfficial = true and percentage < 75;
