/* 13.Select the departments with a budget larger than the average budget of all the departments. */
SELECT code
	FROM departments d
	WHERE budget > (SELECT AVG(budget) FROM departments);