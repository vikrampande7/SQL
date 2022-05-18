CREATE TABLE employees(
	rmp_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	birthday DATE CHECK (birthday > '1900-01-01'),
	hire_date DATE CHECK (hire_date > birthday),
	salary INTEGER CHECK (salary > 0)
)

SELECT * FROM employees

INSERT INTO employees(first_name, last_name, birthday, hire_date, salary)
VALUES('Vicky','P','1998-08-16','2021-05-28','28000')