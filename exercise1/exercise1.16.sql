/* 16. Select the name of each manufacturer along with the name and price of its most expensive product.*/

SELECT p.productname, unitprice, s.contactname
FROM products p INNER JOIN suppliers s
ON p.supplierid = s.supplierid
 AND p.unitprice =
 (
   SELECT MAX(p.unitprice)
	 FROM products p
	 WHERE p.supplierid = s.supplierid   --<--- basicamente devuelve 1 resultado por vez (una especie de ciclo for?)
 );

/* 
here the subquery is <<correlated>> - there is no way to compute the subquery unless s.supplierid is known.
Since the value for p.supplierid may vary for each row of the outer query, 
this subquery could be executed once for each row of the outer query.
*/