/* 15. Select the name and price of the cheapest product. */
SELECT productname, unitprice 
	FROM products
	ORDER BY unitprice ASC
	LIMIT 1; -- <---- Limita la cantidad de lineas a imprimir, como lo ordene ascendentemente, el menor será la primera linea.

SELECT productname, unitprice
	FROM products
	WHERE unitprice = (SELECT MIN(unitprice) FROM products);	