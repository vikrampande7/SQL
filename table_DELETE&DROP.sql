INSERT INTO job(job_name)
VALUES
('Full Stack Engineer')

DELETE FROM job
WHERE job_name = 'Full Stack Engineer'
RETURNING job_id, job_name

ALTER TABLE new_info
DROP COLUMN  IF EXISTS person_new CASCADE
