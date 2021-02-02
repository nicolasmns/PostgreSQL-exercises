/* 8. Select the warehouse codes, along with the number of boxes in each warehouse. Optionally, take into account that some warehouses are empty
(i.e., the box count should show up as zero, instead of omitting the warehouse from the result). */
SELECT w.code, COUNT(b.code) --No cuenta los NULL
	FROM boxes b
	RIGHT JOIN warehouses w --Pondra NULL en code
	ON b.warehouse = w.code
	GROUP BY w.code;
