USE library;

SELECT book_title
FROM books
WHERE books.code_publish =
(
	SELECT code_publish
    FROM publishing_house
    WHERE publish IN ("Питер-Софт", "Альфа", "Наука")
);
