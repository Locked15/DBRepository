USE library;

SELECT book_title, (amount * cost) AS price
FROM purchases, books
WHERE purchases.code_book = books.code_book;
