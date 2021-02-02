/* 9. Select the codes of all warehouses that are saturated (a warehouse is saturated if the number of boxes in it is larger than the warehouse's capacity). */
SELECT w.code
	FROM warehouses w
	WHERE capacity < (SELECT COUNT(code)
					 	FROM boxes b
					 	WHERE w.code = b.warehouse);
