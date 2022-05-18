select * from account

UPDATE account
SET last_login = CURRENT_TIMESTAMP
WHERE last_login = NULL

UPDATE account
SET last_login = created_on

UPDATE account_job
SET hire_date = account.created_on
FROM account
WHERE account_job.user_id = account.user_id

UPDATE account
SET last_login = current_timestamp
returning email, created_on, last_login