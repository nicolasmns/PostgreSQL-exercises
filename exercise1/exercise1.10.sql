/* 10. Select all the data from the products, including all the data for each product's manufacturer. */
-- SIN INNER JOIN:
SELECT * FROM products p, suppliers s
	WHERE p.supplierid = s.supplierid;
--------------------------------------------------------------
-- CON INNER JOIN:
SELECT * FROM products p
	INNER JOIN suppliers s ON p.supplierid = s.supplierid;