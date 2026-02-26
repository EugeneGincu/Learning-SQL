USE sakila;
SHOW TABLES;
SELECT *
    FROM actor;
SELECT actor_id,
       'PENELOPE' name,
       LOWER(last_name) AS last_name  #optional AS keyword column alias
    FROM actor;
SELECT version() version,
       user() user,
       database() database_name;
SELECT DISTINCT actor_id   #distinct set removes duplicates
    FROM film_actor
    ORDER BY actor_id;
SELECT ALL actor_id   #ALL is default
    FROM film_actor
    ORDER BY actor_id;
SELECT concat(cust.last_name, ', ', cust.first_name) full_name
    FROM
        (SELECT first_name, last_name, email        #subquery (parentheses) in FROM is derived table
         FROM customer
         WHERE first_name = 'JESSIE'
         ) cust;