/* 9. Select the number of employees in each department (you only need to show the department code and the number of employees).*/
SELECT d.code as Dept_Code, COUNT(e.name) AS number_of_employees 
	FROM employees2 e
	INNER JOIN departments d
		ON e.department = d.code
	GROUP BY d.code;