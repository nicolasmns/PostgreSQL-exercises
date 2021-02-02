/* 10. Remove movie theaters projecting movies rated "NC-17". */
DELETE FROM movietheaters
	WHERE movie IN (SELECT code 
					 	FROM movies
						WHERE rating = 'NC-17')