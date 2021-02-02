/* 16. Remove all boxes from saturated warehouses. */
DELETE FROM boxes
	WHERE warehouse IN (SELECT code 
						FROM warehouses w
					   		WHERE capacity < (SELECT COUNT(*)
											FROM boxes b
											WHERE b.warehouse = w.code));