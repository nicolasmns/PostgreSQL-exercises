/* 7. Select the code of each box, along with the name of the city the box is located in. */
SELECT b.code, w.location 
	FROM boxes b, warehouses w
	WHERE b.warehouse = w.code;