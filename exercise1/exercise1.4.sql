/* 4. Select all the products with a price between $60 and $120.*/
SELECT productname, unitprice FROM products WHERE unitprice >= 60 and unitprice <= 120;

-- solución alternativa:
SELECT * FROM products
	WHERE unitprice BETWEEN 60 and 120;