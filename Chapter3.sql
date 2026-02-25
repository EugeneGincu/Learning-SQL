USE sakila;
SHOW TABLES;
SELECT *
    FROM actor;
SELECT actor_id,
       'PENELOPE' name,
       LOWER(last_name) last_name
    FROM actor;
SELECT version() version,
       user() user,
       database() database_name;