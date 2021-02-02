/* 5. Select the warehouse code and the average value of the boxes in each warehouse. */
SELECT warehouse, AVG(value)
	FROM boxes
	GROUP BY warehouse;