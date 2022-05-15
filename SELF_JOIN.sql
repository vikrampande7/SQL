SELECT film1.title, film2.title, film1.length
FROM film as film1
INNER JOIN film AS film2
ON film1.length = film2.length
AND film1.film_id != film2.film_id