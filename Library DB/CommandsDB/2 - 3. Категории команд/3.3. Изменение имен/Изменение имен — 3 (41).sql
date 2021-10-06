USE library;

SELECT SUM(cost) AS sum_cost
FROM purchases
JOIN deliveries
ON name_company = LOWER("ОАО Луч");
