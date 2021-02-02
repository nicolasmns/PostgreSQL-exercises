/* 14. Select the names of manufacturer whose products have an average price larger than or equal to $150. */
-- Opcion hecha por mi:
SELECT contactname 
	FROM (
		SELECT s.contactname, AVG(unitprice) as averagePricePerContact 
			FROM suppliers s, products p
				WHERE s.supplierid = p.supplierid
			GROUP BY s.contactname) alias
		WHERE averagePricePerContact >= 40;

-- Opcion hecha por ejercicio:
SELECT contactname, AVG(unitprice)
   FROM products p
   		INNER JOIN suppliers s
   			ON p.supplierid = s.supplierid 
   GROUP BY contactname
   HAVING AVG(unitprice) >= 40;