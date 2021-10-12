USE library;

SELECT book_title, amount
FROM purchases
JOIN books
ON date_order 
BETWEEN '2003.03.12' AND '2003.06.15';
