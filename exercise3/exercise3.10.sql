/* 10. Select the codes of all the boxes located in Chicago. */
SELECT *
	FROM boxes b
	INNER JOIN warehouses w
	ON b.warehouse = w.code
	WHERE location = 'Chicago';