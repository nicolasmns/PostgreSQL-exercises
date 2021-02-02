/* 2.What is the total weight of all the packages that he sent? */
SELECT SUM(weight)
	FROM package
	WHERE sender IN (SELECT accountnumber
								FROM client
						   		WHERE name = 'Al Gores Head');