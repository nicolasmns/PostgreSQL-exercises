/* 3. Show all unrated movies. */
SELECT *
	FROM movies
	WHERE rating IS NULL;