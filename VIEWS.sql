CREATE VIEW customer_info AS
SELECT first_name, last_name, address
FROM customer AS c
INNER JOIN address AS a
ON c.address_id = a.address_id

SELECT * FROM customer_info


CREATE OR REPLACE VIEW customer_info AS
SELECT first_name, last_name, address, district
FROM customer AS c
INNER JOIN address AS a
ON c.address_id = a.address_id

ALTER VIEW customer_info
RENAME TO customers_info

SELECT * FROM customers_info

DROP VIEW IF EXISTS customer_info

DROP VIEW IF EXISTS customers_info


