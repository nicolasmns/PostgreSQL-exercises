/* 11. Select the name and last name of each employee, along with the name and budget of the employee's department. */
SELECT e.name, lastname, d.name, budget 
	FROM
		employees2 e,
		departments d
	WHERE e.department = d.code;