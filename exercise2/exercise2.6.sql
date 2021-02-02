/* 6. Select all the data of employees that work in department 37 or department 77. */
SELECT *
	FROM employees2
	WHERE department IN (37, 77);