USE library;

SELECT DISTINCT book_title
FROM books
WHERE code_author
IN
(
	SELECT code_author
    FROM authors
    WHERE name_author
    IN ("Лев Толстой", "Александр Пушкин", "Федор Достоевский")
);
