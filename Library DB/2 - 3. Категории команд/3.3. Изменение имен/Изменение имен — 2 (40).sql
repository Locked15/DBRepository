USE library;

-- Корректируем название столбца для большей понятности.
SELECT book_title, (pages / cost) AS one_page_price
FROM purchases
JOIN books
ON purchases.code_book = books.code_book;
