/* 12. Select the name and last name of employees working for departments with a budget greater than $60,000. */
SELECT e.name, lastname 
	FROM employees2 e
	INNER JOIN departments d
		ON e.department = d.code
	WHERE budget > 60000;
	
-- alternativa
SELECT name, lastname 
	FROM employees2 e
	WHERE department IN (SELECT code FROM departments WHERE budget > 60000);