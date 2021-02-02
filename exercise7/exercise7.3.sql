/* 3. Which pilots transported those packages? */
SELECT name FROM employee
WHERE EmployeeID IN (SELECT manager FROM shipment
						WHERE shipmentID IN (SELECT shipment
												FROM package
												WHERE sender IN (SELECT accountnumber
																	FROM client
																	WHERE name = 'Al Gores Head')));