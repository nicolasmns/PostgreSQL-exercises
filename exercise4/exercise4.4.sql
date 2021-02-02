/* 4. Select all movie theaters that are not currently showing a movie. */
SELECT * 
	FROM movietheaters
	WHERE movie IS NULL;