/* 5. Select all data from all movie theaters and, additionally, the data from the movie that is being shown in the theater (if one is being shown). */
SELECT * 
	FROM movietheaters t
	LEFT JOIN movies m
	ON m.code = t.movie;