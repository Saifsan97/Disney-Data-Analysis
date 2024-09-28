-- Part 1 - DATA CLEANING
-- by running this code, the entire sql script will be executed.

-- Step 1 - Creating a new database 'prime'
DROP DATABASE prime;
CREATE DATABASE prime;



-- Step 2 - Creating new tables in the database
-- dropping existing tables in the database
DROP TABLE IF EXISTS titles CASCADE;
DROP TABLE IF EXISTS credits CASCADE;

-- creating new tables to hold the raw data
CREATE TABLE titles(
id VARCHAR(15),
t_title TEXT,
t_type VARCHAR(5),
description TEXT,
release_year INTEGER,
age_certification VARCHAR(10),
runtime INTEGER,
genres VARCHAR(100),
production_countries VARCHAR(50),
seasons FLOAT,
imdb_id VARCHAR(15),
imdb_score FLOAT,
imdb_votes FLOAT,
tmdb_popularity FLOAT,
tmdb_score FLOAT
);

CREATE TABLE credits(
person_id INTEGER,	
id VARCHAR(15),
name TEXT,
characters TEXT,
role VARCHAR(8)
);



-- Step 3 - loading the data into the titles and credits table
-- showing the first 10 rows from the tables
SELECT * 
FROM titles
LIMIT 10;

SELECT * 
FROM credits
LIMIT 10;



-- Step 4 - Checking the size of the dataset
SELECT COUNT(*) FROM titles;
SELECT COUNT(*) FROM credits;



-- Step 5 - Removing the redundant columns
ALTER TABLE titles DROP COLUMN imdb_id;



-- Step 6 - Looking for null values
-- from titles table
SELECT COUNT(*) FROM titles WHERE id IS NULL;
SELECT COUNT(*) FROM titles WHERE t_title IS NULL;
SELECT COUNT(*) FROM titles WHERE t_type IS NULL;
SELECT COUNT(*) FROM titles WHERE release_year IS NULL;
SELECT COUNT(*) FROM titles WHERE age_certification IS NULL;
SELECT COUNT(*) FROM titles WHERE age_certification= '[]';
SELECT COUNT(*) FROM titles WHERE runtime = 0;
SELECT COUNT(*) FROM titles WHERE genres IS NULL;
SELECT COUNT(*) FROM titles WHERE genres= '[]';
SELECT COUNT(*) FROM titles WHERE production_countries IS NULL;
SELECT COUNT(*) FROM titles WHERE production_countries= '[]'; 
SELECT COUNT(*) FROM titles WHERE imdb_id IS NULL;
SELECT COUNT(*) FROM titles WHERE imdb_score IS NULL;
SELECT COUNT(*) FROM titles WHERE tmdb_popularity IS NULL;
SELECT COUNT(*) FROM titles WHERE tmdb_score IS NULL;

-- from credits table
SELECT COUNT(*) FROM credits WHERE person_id IS NULL;
SELECT COUNT(*) FROM credits WHERE id IS NULL;
SELECT COUNT(*) FROM credits WHERE name IS NULL;
SELECT COUNT(*) FROM credits WHERE characters IS NULL;
SELECT COUNT(*) FROM credits WHERE role IS NULL;



-- Step 7 - Deleting the null values
DELETE FROM titles
WHERE tmdb_popularity IS NULL 
       OR tmdb_score IS NULL 
       OR imdb_score IS NULL
       OR imdb_votes IS NULL;
       
  
  
-- Step 8 - Replacing the Null Values
-- Setting the null values in character column to 'No information'
UPDATE credits 
SET characters = 'N/A' 
WHERE characters IS NULL;

-- Setting the null values in seasons to 0 which corresponds to Movies
UPDATE titles 
SET seasons = 0 
WHERE seasons IS NULL;

-- Setting the null values in age_certification to 'Others'
UPDATE titles 
SET age_certification = 'Others' 
WHERE age_certification IS NULL;

-- Setting the values with [] in genres column with 'N/A'
UPDATE titles 
SET genres = 'N/A' 
WHERE genres = '[]';

-- Setting the values with [] in production_countries column with 'N/A'
UPDATE titles 
SET production_countries = 'N/A' 
WHERE production_countries = '[]';



-- Step 9 - Looking for duplicates
-- in titles table
SELECT id, COUNT(id) as count
FROM titles
GROUP BY id
HAVING COUNT(id) >1 ;

-- In credits table
-- This SQL code is selecting id, person_id, and the count of each group as count 
-- from the raw_credits table. The GROUP BY clause groups the rows by id, person_id, 
-- and role. The HAVING clause filters the groups with a count greater than 1.

SELECT id, person_id, COUNT(*) as count
FROM credits
GROUP BY id, person_id, role
HAVING COUNT(*) > 1
ORDER BY count desc limit 10;

-- Step 10- Some more unusual titles starting with '#' and '@'
-- The SQL query selects the title column from the titles table. 
-- The WHERE clause filters out the rows where the titles column starts 
-- with a digit or an uppercase letter.

SELECT t_title 
FROM titles 
WHERE t_title ~ '^#' 
ORDER BY t_title;

SELECT t_title 
FROM titles 
WHERE t_title ~ '^@' 
ORDER BY t_title;

-- trimming the # from the Left hand side of the titles
UPDATE title 
SET t_title = LTRIM(t_title, '#') 
WHERE t_title ~ '^#';

-- trimming the @ from the Left hand side of the titles
UPDATE title 
SET t_title = LTRIM(t_title, '@') 
WHERE t_title ~ '^@';
