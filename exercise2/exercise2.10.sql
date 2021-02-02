/* 10. Select all the data of employees, including each employee's department's data. */
SELECT *
	FROM employees2 e
	INNER JOIN departments d
		ON e.department = d.code;