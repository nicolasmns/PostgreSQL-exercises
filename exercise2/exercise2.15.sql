/* 15. Select the name and last name of employees working for departments with second lowest budget. */
SELECT e.name, lastname
	FROM employees2 e
	INNER JOIN (SELECT *
				FROM departments d
				ORDER BY budget ASC 
				LIMIT 1 OFFSET 1) temporary
	ON e.department = temporary.code;	