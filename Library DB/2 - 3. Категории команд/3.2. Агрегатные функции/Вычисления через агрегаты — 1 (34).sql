USE library;

SELECT SUM(cost) AS price
FROM purchases
WHERE code_delivery =
(
	SELECT code_delivery
    FROM deliveries
    WHERE name_company = LOWER("ЗАО Оптторг")
);
