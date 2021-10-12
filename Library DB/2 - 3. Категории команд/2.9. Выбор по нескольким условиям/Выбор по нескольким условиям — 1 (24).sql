USE library;

SELECT book_title, code_delivery, date_order
FROM books
JOIN purchases
WHERE amount > 100 OR cost
BETWEEN 200 AND 500
