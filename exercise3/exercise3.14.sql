/* 14. Apply a 20% value reduction to boxes with a value larger than the average value of all the boxes.*/
UPDATE boxes
	SET value = value * 0.8
	WHERE value > (SELECT AVG(value) FROM boxes);