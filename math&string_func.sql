-- MATHEMATICAL FUNCTIONS AND OPERATORS
-- https://www.postgresql.org/docs/9.5/functions-math.html
SELECT * FROM film

SELECT ROUND(replacement_cost/rental_rate) AS Percentage
FROM film

SELECT 0.1 * replacement_cost FROM film

-- STRING FUNCTIONS AND OPERATORS
-- https://www.postgresql.org/docs/9.1/functions-string.html

SELECT first_name, LENGTH(first_name) FROM customer

SELECT UPPER(first_name) || ' ' || UPPER(last_name) as full_name
FROM customer

SELECT LOWER(LEFT(first_name,2)) || LOWER(last_name) || '@gmail.com' as email_ids
FROM customer