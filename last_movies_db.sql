SELECT * FROM series;
SELECT * FROM genres;
SELECT * FROM actor_episode;
SELECT * FROM episodes;
SELECT * FROM actors;
SELECT * FROM movies;
SELECT * FROM actor_movie;

-- Micro desafío - Paso 1:

SELECT series.title AS serie, genres.name AS genero
FROM series
INNER JOIN genres
ON series.genre_id = genres.id;

SELECT episodes.title, actors.first_name, actors.last_name
FROM episodes
INNER JOIN actor_episode ON  actor_episode.episode_id = episodes.id
INNER JOIN actors ON actor_episode.actor_id = actors.id;

-- Micro desafío - Paso 2:

SELECT DISTINCT actors.first_name, actors.last_name
FROM actors
INNER JOIN actor_movie ON actor_movie.actor_id = actors.id
INNER JOIN movies ON movies.id = actor_movie.movie_id
WHERE movies.title LIKE "%La Guerra de las galaxias%";

-- Micro desafío - Paso 3:

SELECT * FROM genres;
SELECT * FROM movies;

SELECT movies.title, COALESCE(genres.name, "no tiene género") AS "genero"
FROM movies
LEFT JOIN genres ON movies.genre_id = genres.id;

-- Micro desafío - Paso 4:

SELECT title, DATEDIFF(end_date, release_date) AS “Duración”
FROM series;

-- Micro desafío - Paso 5:

SELECT first_name
FROM actors
WHERE LENGTH (first_name) >= 6
ORDER BY first_name;

SELECT SUM(number) AS "total de episodios en bbdd"
 FROM episodes;
 
 SELECT * FROM series;
 SELECT * FROM seasons;
 
 SELECT series.title, seasons.title
 FROM series
 INNER JOIN seasons ON series.id = seasons.serie_id;  
 
 SELECT * FROM genres;
 SELECT * FROM movies;  
 
 SELECT movies.genre_id, genres.name
 FROM movies
 INNER JOIN genres
 












