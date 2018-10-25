CREATE VIEW employee_positions AS
SELECT employees.id AS employee_id,
	name,
	title
FROM employees
	LEFT JOIN titles on employees.title_id = titles.id