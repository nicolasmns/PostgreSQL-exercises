/* 17. Select the name of each manufacturer which have an average price above $145 and contain at least 2 different products.*/
SELECT 
	s.contactname,
	COUNT(productname) as CountProducts,
	AVG(unitprice) as AveragePrice
	FROM products p, suppliers s
	WHERE p.supplierid = s.supplierid
	GROUP BY s.contactname
	HAVING
		AVG(p.unitprice) > 40 AND
		COUNT(productname) >= 2;

Select DISTINCT s.contactname as manufacturer_name
 FROM suppliers s
 JOIN Products p
 ON p.supplierid = s.supplierid
 WHERE p.supplierid in (
	SELECT DISTINCT p.supplierid
	FROM Products p
	GROUP BY p.supplierid
	HAVING AVG(p.unitprice) >= 40 AND COUNT(p.supplierid) >=2
);
