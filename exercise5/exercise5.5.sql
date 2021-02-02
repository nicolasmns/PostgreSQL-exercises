/* 5. Select the name of pieces provided by provider with code "HAL". */
SELECT p.name
	FROM pieces p
	WHERE p.code IN (SELECT piece FROM provides WHERE provider = 'HAL');
