USE library;

SELECT book_title, (pages / cost) AS price
FROM books, purchases
WHERE books.code_book = purchases.code_book;
