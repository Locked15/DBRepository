USE library;

SELECT book_title, amount
FROM books
JOIN purchases 
ON purchases.code_delivery 
IN (3, 7, 9, 11)
