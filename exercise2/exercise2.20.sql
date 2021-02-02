/* 20. Delete from the table all employees who work in departments with a budget greater than or equal to $60,000.*/

DELETE FROM employees2
	WHERE department IN (SELECT code FROM departments WHERE budget >= 60000);