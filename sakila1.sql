USE Sakila;
SELECT * FROM customer WHERE customer_id = 20;

SELECT * FROM customer WHERE customer_id BETWEEN 20 AND 60;

 SELECT * FROM customer WHERE first_name LIKE 'L%';
 
 SELECT * FROM customer WHERE first_name LIKE '%L%';

SELECT * FROM customer WHERE first_name LIKE '%L';

SELECT * FROM customer WHERE first_name LIKE '%L';-- 

SELECT * FROM customer WHERE last_name LIKE 'C%' ORDER BY create_date DESC;

SELECT customer_id, first_name, last_name, email FROM customer WHERE customer_id IN (515, 181, 582, 503, 29, 85);

SELECT customer_id, first_name, last_name, email AS email_address FROM customer WHERE store_id = 2;

SELECT first_name, last_name, email FROM customer ORDER BY email DESC;

SELECT customer_id, first_name, last_name, email FROM sakila.customer WHERE active = 1 AND MONTH(create_date) = 2;

SELECT email, LENGTH(email) AS email_length FROM customer ORDER BY email_length DESC, email ASC;

SELECT email, LENGTH(email) AS email_length FROM customer ORDER BY email_length ASC, email ASC LIMIT 100;



