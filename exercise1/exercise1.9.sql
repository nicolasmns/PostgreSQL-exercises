/* 9.Select the name and price of all products with a price larger than or equal to $180, 
and sort first by price (in descending order), and then by name (in ascending order) */

SELECT productname, unitprice FROM products
	WHERE unitprice >= 180
	ORDER BY 
		unitprice DESC, productname;