/* 3. Obtain the average price of each piece (show only the piece code and the average price). */
SELECT piece, AVG(price) 
	FROM provides
	GROUP BY piece;