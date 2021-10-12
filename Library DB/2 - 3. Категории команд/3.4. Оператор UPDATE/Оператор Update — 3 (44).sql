USE library;

UPDATE purchases
SET cost = cost * 1.2
WHERE date_order
BETWEEN CURRENT_DATE - INTERVAL 30 DAY AND CURRENT_DAY 
