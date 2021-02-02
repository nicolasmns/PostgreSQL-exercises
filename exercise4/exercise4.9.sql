/* 9. Set the rating of all unrated movies to "G". */
UPDATE movies
	SET rating = 'G'
	WHERE rating IS NULL;