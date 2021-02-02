/* 7. Show the titles of movies not currently being shown in any theaters. */
SELECT title
	FROM movies
	WHERE code NOT IN (SELECT movie 
					   	FROM movietheaters
					  	WHERE movie IS NOT NULL);