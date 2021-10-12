USE library;

SELECT COUNT(code_purchase) AS total
FROM purchases
WHERE date_order
BETWEEN '2003.01.01' AND '2003.02.01';
