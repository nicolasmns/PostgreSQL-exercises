/* 12. Select the average price of each manufacturer's products, showing only the manufacturer's code. */
SELECT supplierid, AVG(unitprice) 
	FROM products
	GROUP BY supplierid;