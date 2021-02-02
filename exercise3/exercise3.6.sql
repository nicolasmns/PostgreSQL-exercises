/* 6. Same as previous exercise, but select only those warehouses where the average value of the boxes is greater than 150. */
SELECT warehouse, AVG(value)
	FROM boxes
	GROUP BY warehouse
	HAVING AVG(value) > 150;