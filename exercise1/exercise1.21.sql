/* 21.Apply a 10% discount to all products with a price larger than or equal to $120. */
UPDATE products
	SET unitprice = unitprice * 0.9
	WHERE unitprice >= 20;