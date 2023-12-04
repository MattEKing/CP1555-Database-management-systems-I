select address.address, city.city ,address.district, country.country from 
((address join store on address.address_id = store.address_id) 
join city on city.city_id = address.city_id)
 join country on country.country_id = city.country_id;

-- question 

select customer.first_name as 'First Name', customer.last_name as 'last name'
 FROM customer join store 
 on customer.store_id = store.store_id  
 where store.store_id = 1 and last_name like 'A%'
 order by last_name;
 
 select title, category.name, length, description, rental_rate from (film join film_category 
 on film.film_id = film_category.film_id) 
 join category on category.category_id = film_category.category_id
 where category.name = 'sci-Fi' and  rental_rate >= 2.99
 order by length desc;

