/* 18.Reassign all employees from the Research department (code 77) to the IT department (code 14). */

UPDATE employees2
	SET department = 14
	WHERE department = 77;