--a California sales tax law has changed and we need to alert our customers to this through email.
--So the question is, what are the emails of the customers who live in California?

SELECT email, district 
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
WHERE district = 'California'

--A customer walks into the store and there are a huge fan of this actor, Nick Wahlberg, and they want to know which movies has Nick Wahlberg in it.
--So your task is to basically get a list of all the movies Nick Wahlberg has been in.
SELECT * FROM film
SELECT * FROM film_actor
SELECT * FROM actor

SELECT title, first_name, last_name
FROM film as f
INNER JOIN film_actor as fa
ON f.film_id = fa.film_id
INNER JOIN actor as ac
ON fa.actor_id = ac.actor_id
WHERE fa.actor_id = 2






