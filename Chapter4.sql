use sakila;
SELECT *
    FROM customer
    WHERE NOT (first_name = 'MARY' OR last_name = 'JOHNSON'); #not recommended
SELECT *
    FROM customer
    WHERE first_name <> 'MARY' AND last_name != 'JOHNSON'; #inequality condition <> same as !=
SELECT c.email
    FROM customer c
        INNER JOIN rental r
        ON c.customer_id = r.customer_id
    WHERE date(r.rental_date) = '2005-06-14';
SELECT customer_id, rental_date
    FROM rental
    WHERE rental_date <= '2005-06-16'
        AND rental_date >= '2005-06-14';
SELECT customer_id, rental_date
    FROM rental
    WHERE rental_date BETWEEN '2005-06-14' AND '2005-06-16'; #BETWEEN lower limit AND upper limit evaluates to rental_date <= '2005-06-16'AND rental_date >= '2005-06-14'
SELECT customer_id, payment_date, amount
    FROM payment
    WHERE amount BETWEEN 10.0 AND 11.99;
SELECT last_name, first_name
    FROM customer
    WHERE last_name BETWEEN 'FA' AND 'FR';#"FRANKLIN" not included in FR, use FRB

