USE library;

SELECT book_title, amount
FROM books, purchases
WHERE purchases.code_delivery IN (3, 7, 9, 11)
GROUP BY books.code_book = purchases.code_book;
