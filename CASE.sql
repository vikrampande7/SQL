SELECT customer_id,
CASE 
	WHEN (customer_id < 100) THEN 'Premium Customers'
	WHEN (customer_id BETWEEN 100 AND 200) THEN 'Plus'
	ELSE 'Normal'
END AS customer_type
FROM customer


SELECT customer_id,
CASE customer_id
	WHEN 124 THEN 'Winner'
	WHEN 56 THEN 'Second Place'
	WHEN 335 THEN 'Third Place'
	ELSE 'NORMAL'
END AS Result
FROM customer

SELECT DISTINCT(rental_rate) FROM film
SELECT rental_rate,
CASE rental_rate
	WHEN 0.99 THEN 1
	WHEN 2.99 THEN 3
	WHEN 4.99 THEN 5
	ELSE 0
END
FROM film

SELECT 
SUM(CASE rating
		WHEN 'PG' THEN 1
		ELSE 0
END) AS pg,
SUM(CASE rating
		WHEN 'R' THEN 1
		ELSE 0
END) AS r,
SUM(CASE rating
		WHEN 'PG-13' THEN 1
		ELSE 0
END) AS pg13
FROM film




