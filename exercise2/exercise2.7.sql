/* 7. Select all the data of employees whose last name begins with an "S". */
SELECT *
	FROM employees2
	WHERE lastname LIKE 'S%'; -- Empieza con S y lo demas no importa (%)