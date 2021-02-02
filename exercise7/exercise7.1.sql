/* 1.Who received a 1.5kg package? */
SELECT name FROM client
	WHERE accountnumber IN (SELECT recipient
								FROM package
						   		WHERE weight = 1.5);