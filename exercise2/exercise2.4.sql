/* 4. Select all the data of employees whose last name is "Smith" or "Doe". */
SELECT *
	FROM employees2
	WHERE lastname IN ('Smith', 'Doe');