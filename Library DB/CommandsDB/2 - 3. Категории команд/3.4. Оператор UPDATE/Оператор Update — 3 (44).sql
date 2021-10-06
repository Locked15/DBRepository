USE library;

UPDATE purchases
SET cost = cost * 1.2
WHERE DATEDIFF(date_order, CURRENT_DATE()) < 30;
