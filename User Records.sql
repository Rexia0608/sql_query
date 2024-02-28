-- SELECT * FROM hackerhero_practice.users;


	-- 1. What's the query for creating this new database table with the fields above?
-- 		CREATE TABLE `hackerhero_practice`.`users` (
--   `id` INT NOT NULL AUTO_INCREMENT,
--   `first_name` VARCHAR(255) NULL,
--   `last_name` VARCHAR(255) NULL,
--   `email` VARCHAR(255) NULL,
--   `encrypted_password` VARCHAR(255) NULL,
--   `created_at` DATETIME NULL,
--   `updated_at` DATETIME NULL,
--   PRIMARY KEY (`id`));
		


	-- 2. What's the query for inserting new records into this table?  Write queries for inserting three fake users into the table (one query for each insert).

-- INSERT INTO hackerhero_practice.users (first_name, last_name, email, encrypted_password, created_at, updated_at) 
-- VALUES ('jude', 'negro', 'neggy@Smith.com', 'qweqwerty', NOW(), NOW());

-- INSERT INTO hackerhero_practice.users (first_name, last_name, email, encrypted_password, created_at, updated_at) 
-- VALUES ('russel', 'run', 'run@master.com', 'qweqwerty', NOW(), NOW());

-- INSERT INTO hackerhero_practice.users (first_name, last_name, email, encrypted_password, created_at, updated_at) 
-- VALUES ('rhey', 'tomorrow', 'rhey@lazy.com', 'qweqwerty', NOW(), NOW());



-- 3. What's the query for updating one of the user records?  For example, if you wanted to update the user record for id = 1, with some fake data, what would the query be?

-- UPDATE hackerhero_practice.users SET first_name = 'rhey', last_name = 'Smootest', email = 'cantooners@gamail.com' WHERE id = 14;



--  4 What query would you run for updating all of the user records with the last_name of 'Choi'?

-- UPDATE hackerhero_practice.users SET last_name = 'Choi' WHERE id > 0;


-- 5. What query would you run for updating all the user records where ID is 3, 5, 7, 12, or 19?

-- UPDATE hackerhero_practice.users SET last_name = 'Choi' WHERE id IN (3, 5, 7, 12, 19);

-- 6. What's the query for deleting a user record where id = 1?

-- DELETE FROM hackerhero_practice.users WHERE id = 12;


-- 7. What's the query for deleting the entire users records in the users table?

-- DELETE FROM hackerhero_practice.users WHERE id > 0;

-- 8. What's the query for dropping the entire users table?  What's the difference between dropping the table and deleting all records?
-- Dropping the table removes the entire schema table structure along with all its data and associated objects, while deleting all records only removes the data within the table, keeping the table structure intact.

-- 9. What's the query for altering the email field to have it be 'email_address' instead?
		
--  ALTER TABLE hackerhero_practice.users CHANGE COLUMN email_address email VARCHAR(255);

-- 10. What's the query for altering the id so that it's a BIGINT instead?

	-- 	ALTER TABLE hackerhero_practice.users DROP PRIMARY KEY;
--         to disable temporarly the primary key, amend the BIGINT to set as primary key

-- 	ALTER TABLE hackerhero_practice.users MODIFY COLUMN id BIGINT AUTO_INCREMENT;
--     ALTER TABLE hackerhero_practice.users ADD PRIMARY KEY (id);

-- 11. What's the query for adding a new field to the users table called is_active where it's a Boolean (meaning it's either a 0 or a 1).  Imagine you wanted the default value of this to be 0 when a new record is created and you won't allow this field to ever be NULL.  With this in mind, now come up with a query.

	-- ALTER TABLE hackerhero_practice.users ADD COLUMN is_active TINYINT(1) NOT NULL DEFAULT 0;
   --  This query adds a new column named is_active to the users table with the specified characteristics: a boolean-like field where 0 represents false and 1 represents true. It's set to not allow NULL values and has a default value of 0 when a new record is inserted.


-- SELECT * FROM hackerhero_practice.users;
