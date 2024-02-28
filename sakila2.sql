
-- 1. Get all the list of customers.
-- SELECT * FROM sakila.customer;


-- 2. Get all the list of customers name, as well as their address.
-- for this part there's no collumn name customer name
	-- SELECT first_name, last_name FROM sakila.customer;
 --    SELECT c.first_name, c.last_name, a.address FROM sakila.customer c JOIN sakila.address a ON c.address_id = a.address_id;

-- 3. Get all the list of customers as well as their address and the city name.
-- SELECT c.first_name, c.last_name, a.address, ci.city FROM sakila.customer c JOIN sakila.address a ON c.address_id = a.address_id JOIN sakila.city ci ON a.city_id = ci.city_id;

-- 4. Get all the list of customers, as well as their address, city name, and country.
-- SELECT c.first_name, c.last_name, a.address, ci.city, co.country FROM sakila.customer c JOIN sakila.address a ON c.address_id = a.address_id JOIN sakila.city ci ON a.city_id = ci.city_id JOIN sakila.country co ON ci.country_id = co.country_id;

--  5. Get all the list of customers who live in Bolivia
-- SELECT c.first_name, c.last_name, a.address, ci.city, co.country FROM sakila.customer c JOIN sakila.address a ON c.address_id = a.address_id JOIN sakila.city ci ON a.city_id = ci.city_id JOIN sakila.country co ON ci.country_id = co.country_id WHERE co.country = 'Bolivia';

-- 6. Get all the list of customers who live in Bolivia, Germany and Greece
-- SELECT c.first_name, c.last_name, a.address, ci.city, co.country FROM sakila.customer c JOIN sakila.address a ON c.address_id = a.address_id JOIN sakila.city ci ON a.city_id = ci.city_id JOIN sakila.country co ON ci.country_id = co.country_id WHERE co.country IN ('Bolivia', 'Germany', 'Greece');


-- 7. Get all the list of customers who live in the city of Baku.
-- SELECT c.first_name, c.last_name, a.address, ci.city, co.country FROM sakila.customer c JOIN sakila.address a ON c.address_id = a.address_id JOIN sakila.city ci ON a.city_id = ci.city_id JOIN sakila.country co ON ci.country_id = co.country_id WHERE ci.city = 'baku';


-- 8. Get all the list of customers who live in the city of Baku, Beira, and Bergamo.
-- SELECT c.first_name, c.last_name, a.address, ci.city, co.country FROM sakila.customer c JOIN sakila.address a ON c.address_id = a.address_id JOIN sakila.city ci ON a.city_id = ci.city_id JOIN sakila.country co ON ci.country_id = co.country_id WHERE ci.city IN ('Baku, Beira, and Bergamo');

-- SELECT c.first_name, c.last_name, a.address, ci.city, co.country FROM sakila.customer c JOIN sakila.address a ON c.address_id = a.address_id JOIN sakila.city ci ON a.city_id = ci.city_id JOIN sakila.country co ON ci.country_id = co.country_id WHERE ci.city IN ('Baku', 'Beira', 'Bergamo');

-- 9. Get all the list of customers who live in a country where the country name's length is less than 5.  Show the customer with the longest full name first.  (Hint:  Look into how you can concatenate a string in SQL).

-- SELECT c.first_name, c.last_name, CONCAT(c.first_name, ' ', c.last_name) AS full_name, a.address, ci.city, co.country FROM sakila.customer c JOIN sakila.address a ON c.address_id = a.address_id JOIN sakila.city ci ON a.city_id = ci.city_id JOIN sakila.country co ON ci.country_id = co.country_id WHERE LENGTH(co.country) < 5 ORDER BY LENGTH(CONCAT(c.first_name, ' ', c.last_name)) DESC;


-- 10. Get all the list of customers who live in a city name whose length is more than 10.  Order the result so that the customers who live in the same country are shown together.
-- SELECT c.first_name, c.last_name, a.address, ci.city, co.country FROM sakila.customer c JOIN sakila.address a ON c.address_id = a.address_id JOIN sakila.city ci ON a.city_id = ci.city_id JOIN sakila.country co ON ci.country_id = co.country_id WHERE LENGTH(ci.city) > 10 ORDER BY co.country;

-- 11. Get all the list of customers who live in a city where the city name includes the word 'ba'.  For example Arratuba or Baiyin  should show up in your result.
-- SELECT c.first_name, c.last_name, a.address, ci.city, co.country FROM sakila.customer c JOIN sakila.address a ON c.address_id = a.address_id JOIN sakila.city ci ON a.city_id = ci.city_id JOIN sakila.country co ON ci.country_id = co.country_id WHERE ci.city LIKE '%ba%';

-- 12. Get all the list of customers where the city name includes a space.  Order the result so that customers who live in the longest city are shown first.
-- SELECT c.first_name, c.last_name, a.address, ci.city, co.country FROM sakila.customer c JOIN sakila.address a ON c.address_id = a.address_id JOIN sakila.city ci ON a.city_id = ci.city_id JOIN sakila.country co ON ci.country_id = co.country_id WHERE ci.city LIKE '% %' ORDER BY LENGTH(ci.city) DESC;

-- 13. Get all the customers where the country name is longer than the city name.
-- SELECT c.first_name, c.last_name, a.address, ci.city, co.country FROM sakila.customer c JOIN sakila.address a ON c.address_id = a.address_id JOIN sakila.city ci ON a.city_id = ci.city_id JOIN sakila.country co ON ci.country_id = co.country_id WHERE LENGTH(co.country) > LENGTH(ci.city);


















































-- SELECT * FROM sakila.customer;