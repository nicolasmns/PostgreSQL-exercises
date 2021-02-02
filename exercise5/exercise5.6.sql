/* 6. For each piece, find the most expensive offering of that piece and include the piece name, provider name, 
and price (note that there could be two providers who supply the same piece at the most expensive price). */

/* entendí mal lo que pedia el ejercicio, pedía imprimir las piezas con el mayor precio junto con su provider y su precio,
acá lo que hice fue imprimir todas las filas y al lado poner su mayor precio, lo cual al final resultaba mas dificil, asi que lo dejo */
SELECT 
	p.name,
	pvdr.name,
	pv.price,
	temporary.Max_offer
	FROM provides pv
		INNER JOIN pieces p
		ON p.code = pv.piece
		INNER JOIN providers pvdr
		ON pvdr.code = pv.provider
		INNER JOIN (SELECT piece, MAX(price) as Max_Offer FROM provides GROUP BY piece) temporary
		ON pv.piece = temporary.piece
--- solución real:
SELECT 
	p.name,
	pvdr.name,
	pv.price
	FROM provides pv
		INNER JOIN pieces p
		ON p.code = pv.piece
		INNER JOIN providers pvdr
		ON pvdr.code = pv.provider
	WHERE pv.price = (SELECT MAX(price) FROM provides 
					 	WHERE provides.piece = p.code);
