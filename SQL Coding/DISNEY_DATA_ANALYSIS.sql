-- Part 2 - Data Analysis
-- 1. What is the total number of movies and TV shows available on Disney+?
SELECT 
  COUNT(*) 
FROM titles;

-- 2. What were the top 10 movies according to IMDB score?
SELECT t_title, 
t_type, 
imdb_score
FROM titles
WHERE imdb_score >= 8.0
AND t_type = 'MOVIE'
ORDER BY imdb_score DESC
LIMIT 10;

-- 3. What were the top 10 shows according to IMDB score? 
SELECT t_title, 
t_type, 
imdb_score
FROM titles
WHERE imdb_score >= 8.0
AND t_type = 'SHOW'
ORDER BY imdb_score DESC
LIMIT 10;

-- 4. What were the bottom 10 movies according to IMDB score? 
SELECT t_title, 
t_type, 
imdb_score
FROM titles
WHERE t_type = 'MOVIE'
ORDER BY imdb_score ASC
LIMIT 10;

-- 5. What were the bottom 10 shows according to IMDB score? 
SELECT t_title, 
t_type, 
imdb_score
FROM titles
WHERE t_type = 'SHOW'
ORDER BY imdb_score ASC
LIMIT 10;

-- 6. What were the average IMDB and TMDB scores for shows and movies? 
SELECT DISTINCT type, 
ROUND(AVG(imdb_score),2) AS avg_imdb_score,
ROUND(AVG(tmdb_score),2) as avg_tmdb_score
FROM titles
GROUP BY t_type ;

-- 7. Count of movies and shows in each decade
SELECT CONCAT(FLOOR(release_year / 10) * 10, 's') AS decade,
	COUNT(*) AS movies_shows_count
FROM titles
WHERE release_year >= 1940
GROUP BY CONCAT(FLOOR(release_year / 10) * 10, 's')
ORDER BY decade;

-- 8. What were the average IMDB and TMDB scores for each production country?
SELECT DISTINCT production_countries, 
ROUND(AVG(imdb_score),2) AS avg_imdb_score,
ROUND(AVG(tmdb_score),2) AS avg_tmdb_score
FROM titles
GROUP BY production_countries
ORDER BY avg_imdb_score DESC;

-- 9. What were the average IMDB and TMDB scores for each age certification for shows and movies?
SELECT DISTINCT age_certification, 
ROUND(AVG(imdb_score),2) AS avg_imdb_score,
ROUND(AVG(tmdb_score),2) AS avg_tmdb_score
FROM titles
GROUP BY age_certification
ORDER BY avg_imdb_score DESC;

-- 10. What were the 5 most common age certifications for movies?
SELECT age_certification, 
COUNT(*) AS certification_count
FROM titles
WHERE t_type = 'Movie' 
AND age_certification != 'N/A'
GROUP BY age_certification
ORDER BY certification_count DESC
LIMIT 5;

-- 11. Who were the top 20 actors that appeared the most in movies/shows? 
SELECT DISTINCT name as actor, 
COUNT(*) AS number_of_appearences 
FROM credits
WHERE role = 'actor'
GROUP BY name
ORDER BY number_of_appearences DESC
LIMIT 20;

-- 12. Who were the top 20 directors that directed the most movies/shows? 
SELECT DISTINCT name as director, 
COUNT(*) AS number_of_appearences 
FROM credits
WHERE role = 'director'
GROUP BY name
ORDER BY number_of_appearences DESC
LIMIT 20;

-- 13. Calculating the average runtime of movies and TV shows separately
SELECT 
'Movies' AS content_type,
ROUND(AVG(runtime),2) AS avg_runtime_min
FROM titles
WHERE t_type = 'Movie'
UNION ALL
SELECT 
'Show' AS content_type,
ROUND(AVG(runtime),2) AS avg_runtime_min
FROM titles
WHERE t_type = 'Show';

-- 14. Finding the titles and  directors of movies released on or after 2010
SELECT DISTINCT t.t_title, c.name AS director, 
release_year
FROM titles AS t
JOIN credits AS c 
ON t.id = c.id
WHERE t.t_type = 'Movie' 
AND t.release_year >= 2010 
AND c.role = 'director'
ORDER BY release_year DESC;

-- 15. Which shows on Netflix have the most seasons?
SELECT t_title, 
SUM(seasons) AS total_seasons
FROM titles 
WHERE t_type = 'Show'
GROUP BY title
ORDER BY total_seasons DESC
LIMIT 10;

-- 16. Which genres had the most movies? 
SELECT genres, 
COUNT(*) AS title_count
FROM titles 
WHERE t_type = 'Movie'
GROUP BY genres
ORDER BY title_count DESC
LIMIT 10;

-- 17. Which genres had the most shows? 
SELECT genres, 
COUNT(*) AS title_count
FROM titles 
WHERE t_type = 'Show'
GROUP BY genres
ORDER BY title_count DESC
LIMIT 10;

-- 18. Titles and Directors of movies with high IMDB scores (>7.5) and high TMDB popularity scores (>80) 
SELECT t.t_title, 
c.name AS director
FROM titles AS t
JOIN credits AS c 
ON t.id = c.id
WHERE t.t_type = 'Movie' 
AND t.imdb_score > 7.5 
AND t.tmdb_popularity > 80 
AND c.role = 'director';

-- 19. What were the total number of titles for each year? 
SELECT release_year, 
COUNT(*) AS title_count
FROM titles 
GROUP BY release_year
ORDER BY release_year DESC;

-- 20. Actors who have starred in the most highly rated movies or shows
SELECT c.name AS actor, 
COUNT(*) AS num_highly_rated_titles
FROM credits AS c
JOIN titles AS t 
ON c.id = t.id
WHERE c.role = 'actor'
AND (t.t_type = 'Movie' OR t.t_type = 'Show')
AND t.imdb_score > 8.0
AND t.tmdb_score > 8.0
GROUP BY c.name
ORDER BY num_highly_rated_titles DESC;

-- 21. Which actors/actresses played the same character in multiple movies or TV shows? 
SELECT c.name AS actor_actress, 
c.character, 
COUNT(DISTINCT t.title) AS num_titles
FROM credits AS c
JOIN titles AS t 
ON c.id = t.id
WHERE c.role = 'actor' OR c.role = 'actress'
GROUP BY c.name, c.character
HAVING COUNT(DISTINCT t.t_title) > 1;

-- 22. What were the top 3 most common genres?
SELECT t.genres, 
COUNT(*) AS genre_count
FROM titles AS t
WHERE t.t_type = 'Movie'
GROUP BY t.genres
ORDER BY genre_count DESC
LIMIT 3;

-- 23. Average IMDB score for leading actors/actresses in movies or shows 
SELECT c.name AS actor_actress, 
ROUND(AVG(t.imdb_score),2) AS average_imdb_score
FROM credits AS c
JOIN titles AS t 
ON c.id = t.id
WHERE c.role = 'actor' OR c.role = 'actress'
AND c.character = 'leading role'
GROUP BY c.name
ORDER BY average_imdb_score DESC;





