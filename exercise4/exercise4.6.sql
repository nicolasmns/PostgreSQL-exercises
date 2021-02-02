/* 6. Select all data from all movies and, if that movie is being shown in a theater, show the data from the theater. */
SELECT *
	FROM movies m
	LEFT JOIN movietheaters t
	ON m.code = t.movie;
