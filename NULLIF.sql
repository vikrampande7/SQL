CREATE TABLE depts(
	first_name VARCHAR(50),
	department VARCHAR(50)
)

INSERT INTO depts(first_name, department)
VALUES('Vicky', 'A'), ('Harry', 'A'), ('Hailey', 'C')

SELECT (
	SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END)/
	SUM(CASE WHEN department = 'C' THEN 1 ELSE 0 END)
) AS dept_ratio
FROM depts

DELETE FROM depts
WHERE department = 'C'

SELECT * FROM depts

SELECT (
	SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END)/
	SUM(CASE WHEN department = 'C' THEN 1 ELSE 0 END)
) AS dept_ratio
FROM depts

--ERROR:  division by zero SQL state: 22012

SELECT (
	SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END)/
		NULLIF(SUM(CASE WHEN department = 'C' THEN 1 ELSE 0 END),0)	
) AS dept_ratio
FROM depts
-- [null]




