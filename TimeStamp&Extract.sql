-- https://www.postgresql.org/docs/current/functions-formatting.html

SHOW TIMEZONE
SHOW ALL
SELECT NOW()
SELECT TIMEOFDAY()
SELECT CURRENT_TIME
SELECT CURRENT_DATE

SELECT EXTRACT(YEAR FROM payment_date)
FROM payment

SELECT EXTRACT(MONTH FROM payment_date)
FROM payment

SELECT DISTINCT(TO_CHAR(payment_date,'MONTH'))
FROM payment

SELECT COUNT(*)
FROM payment
WHERE EXTRACT(dow FROM payment_date) = 1

