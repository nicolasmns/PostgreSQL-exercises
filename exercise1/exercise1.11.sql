/* 11. Select the product name, price, and manufacturer name of all the products. */
SELECT productname, unitprice, contactname 
	FROM products p, suppliers s
		WHERE p.supplierid = s.supplierid;