CREATE TABLE information(
	info_id SERIAL PRIMARY KEY,
	title VARCHAR(500) NOT NULL,
	Person VARCHAR(50) NOT NULL	
)
SELECT * FROM information

ALTER TABLE information
RENAME TO new_info

ALTER TABLE new_info
RENAME COLUMN person to person_new

SELECT * FROM new_info

ALTER TABLE new_info
ALTER COLUMN person_new DROP NOT NULL

INSERT INTO new_info(title)
VALUES ('Hey')