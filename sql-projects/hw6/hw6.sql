
/**********************************************************************
 * NAME: Colleen Lemak
 * CLASS: DBMS
 * DATE: 17 November 2022
 * HOMEWORK: #6
 * DESCRIPTION: This file implements HW6 by structuring queries for desired output.
 **********************************************************************/

-- Question 1: 
SELECT COUNT(*), MIN(length), MAX(length), AVG(length), COUNT(DISTINCT special_features)
FROM film;

-- Question 2:
SELECT rating, COUNT(*), ROUND(AVG(length), 2)
FROM film
GROUP BY rating
ORDER BY ROUND(AVG(length), 2) DESC;

-- Question 3:
SELECT rating, COUNT(*)
FROM actor  JOIN film_actor USING (actor_id) JOIN film USING (film_id)
GROUP BY rating
ORDER BY COUNT(*) DESC;

-- Question 4:
SELECT c.name, COUNT(*), MIN(rental_rate), MAX(rental_rate), ROUND(AVG(rental_rate), 2), MIN(replacement_cost), MAX(replacement_cost), ROUND(AVG(replacement_cost), 2)
FROM category c JOIN film_category fc USING (category_id) JOIN film f USING (film_id)
GROUP BY c.name ASC;

-- Question 5:
SELECT f.rating, COUNT(*)
FROM inventory i JOIN rental r USING (inventory_id) JOIN film f USING (film_id) JOIN film_category fc USING (film_id)
WHERE fc.category_id = 11 AND i.store_id = 1
GROUP BY f.rating
ORDER BY COUNT(*) DESC;

-- Question 6:
SELECT f.title, f.rating, COUNT(*)
FROM rental r JOIN inventory i USING (inventory_id) JOIN film f USING (film_id) JOIN film_category fc USING (film_id)
WHERE fc.category_id = 11 -- 11 is horror film
GROUP BY f.title
ORDER BY COUNT(*) DESC
LIMIT 15;

-- Question 7:
SELECT f.title, COUNT(*)
FROM film f JOIN film_category fc USING (film_id) JOIN inventory i USING (film_id) JOIN rental r USING (inventory_id)
WHERE f.rating = "G" AND fc.category_id = 1 -- 1 is action film
GROUP BY f.title
HAVING COUNT(*) >= 15
ORDER BY COUNT(*) DESC;

-- Question 8:
SELECT first_name, last_name, COUNT(*)
FROM actor a JOIN film_actor fa USING (actor_id) JOIN film_category fc USING (film_id)
WHERE fc.category_id = 11 -- 11 is horror film
GROUP BY a.actor_id
HAVING COUNT(*) >= 4
ORDER BY COUNT(*) DESC, a.last_name ASC, a.first_name ASC;

-- Question 9:
SELECT c.first_name, c.last_name, COUNT(*)
FROM customer c JOIN rental r USING (customer_id) JOIN inventory i USING (inventory_id) JOIN film f USING (film_id)
WHERE f.rating = "PG"
GROUP BY c.customer_id
HAVING COUNT(*) > 10
ORDER BY COUNT(*) DESC, c.last_name ASC, c.first_name ASC;

-- Question 10:
/*
Exploratory Analysis Query: 
I want to find the top 10 returning and loyal customers who have paid the most amount in a single transaction.
This means the top 10 paying customers will only be selected if they have made more than 20 payments.
The returned data will be sorted from highest to lowest amounts paid, the corresponding customer first name then last name, alphabetically, 
followed by date.
The objective is to find the most loyal customer with high payments.
*/
SELECT c.first_name, c.last_name, p.amount, AVG(p.amount), p.payment_date, COUNT(*)
FROM customer c JOIN payment p USING (customer_id)
GROUP BY c.customer_id
HAVING COUNT(*) > 20
ORDER BY p.amount DESC, c.last_name ASC, c.first_name ASC, p.payment_date DESC
LIMIT 10;

