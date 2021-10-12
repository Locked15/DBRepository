USE library;

SELECT name_author, book_title
FROM authors
JOIN
(
	books
    JOIN 
    (
		deliveries
        JOIN purchases
        ON deliveries.code_delivery = purchases.code_delivery
    )
    ON books.code_book = purchases.code_book
)
ON deliveries.name_company = LOWER("ОАО Книготорг");
