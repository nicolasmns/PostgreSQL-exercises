/* UNIQUE EXERCISE: List all the scientists' names, their projects' names, and the hours worked by that scientist on each project, in alphabetical order of project name,
then scientist name. */

SELECT s.name, p.name, p.hours
	FROM assignedto a
	INNER JOIN scientists s
		ON a.scientist = s.ssn
	INNER JOIN projects p
		ON a.project = p.code
	ORDER BY
		p.name ASC,
		s.name ASC;
