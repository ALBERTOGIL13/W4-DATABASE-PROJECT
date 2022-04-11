select title, film_id, category.category_id, category.name
from film
join category on film.category_id = category.category_id


select title, film.film_id, inventory.inventory_id, rental.rental_id
from film
join inventory on film.film_id = inventory.film_id
join rental on inventory.rental_rental_id = rental.rental_id


select actor.name, count(film.title)
from film
join old_hdd on film.title = old_hdd.title
join actor on old_hdd.name = actor.name
group by name
order by count(film.title)


select film.title ,count(customer_id)
from film
join inventory on film.film_id = inventory.film_id
join rental on inventory.rental_rental_id = rental.rental_id
group by film.title 



select category.name, category.category_id, count(actor.name)
from film
join category on film.category_id = category.category_id
join old_hdd on film.title = old_hdd.title
join actor on old_hdd.name = actor.name
group by film.category_id 