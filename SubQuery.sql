-- SubQuery
SELECT title, rental_rate FROM film
WHERE rental_rate > ( SELECT AVG(rental_rate) FROM film)

SELECT film_id, title
FROM film
WHERE film_id IN
(SELECT inventory.film_id
FROM rental
INNER JOIN inventory 
ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY title DESC

--EXISTS
SELECT first_name, last_name 
FROM customer AS c 
WHERE EXISTS
(SELECT * FROM payment AS p
 WHERE c.customer_id = p.customer_id
 AND p.amount > 5
)

