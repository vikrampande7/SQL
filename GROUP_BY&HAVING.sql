-- We want to give a bonus to the staff member that handled the most payments, most in terms of number of payments processed, not total dollar amount. So how many payments that each staff member handle and who gets the bonus?
SELECT staff_id, COUNT(amount)
FROM payment
GROUP BY staff_id
ORDER BY COUNT(amount) ASC

-- Corporate headquarters is conducting a study on the relationship between replacement cost and the movies MP, a rating that is to say, its rating of GPG are, etc. What is the average replacement cost perMP a rating?
SELECT rating, ROUND(AVG(replacement_cost),3)
FROM film
GROUP BY rating

--We're running a promotion to reward our top five customers with coupons.What are the customer IDs of the top five customers based off total expenditure or total spend?
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5

--We are launching a platinum service for our most loyal customers.We will assign platinum status to customers that have had 40 or more transaction payments.What customer IDs are eligible for platinum status?
SELECT customer_id, COUNT(amount) 
FROM payment
GROUP BY customer_id
HAVING (COUNT(amount) >= 40)

--What are the customer IDs of customers who have spent more than one hundred dollars in payment transactionswith our staff by the member number two?Again, that's customer IDs of people who have spent more than one hundred dollars in payment transactions,but only with the payment transactions that occurred with the staff ID number.
SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 100



