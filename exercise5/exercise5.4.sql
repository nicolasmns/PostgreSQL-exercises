/* 4. Obtain the names of all providers who supply piece 1. */
SELECT pvdrs.name
	FROM provides pv
	INNER JOIN providers pvdrs
	ON pvdrs.code = pv.provider
	AND piece = 1;