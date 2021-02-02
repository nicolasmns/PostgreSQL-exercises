/* 13. Select the average price of each manufacturer's products, showing the manufacturer's name. */
SELECT s.contactname, AVG(unitprice)
	FROM products p
		INNER JOIN suppliers s 
			ON p.supplierid = s.supplierid
	GROUP BY contactname;