SELECT * FROM account
SELECT * FROM job
SELECT * FROM account_job

INSERT INTO account(username, password, email,created_on)
VALUES
('Vikram','Password','vicky@mail.com',CURRENT_TIMESTAMP)


INSERT INTO job(job_name)
VALUES
('Machine Learning Engineer')

INSERT INTO job(job_name)
VALUES
('Data Scientist')


INSERT INTO account_job(user_id, job_id, hire_date)
VALUES
(1,1,CURRENT_TIMESTAMP)