USE library;

SELECT AVG(cost) AS medium_price, AVG(amount) AS medium_count
FROM authors
JOIN
(
	books
    JOIN purchases
    ON books.code_book = purchases.code_book
)
ON name_author = LOWER("Акунин");
