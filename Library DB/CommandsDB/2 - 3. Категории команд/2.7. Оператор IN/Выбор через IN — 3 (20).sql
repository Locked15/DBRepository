USE library;

SELECT book_title
FROM books
WHERE code_author 
IN
(
	SELECT code_author
    FROM authors
    WHERE name_author 
    IN ("Толстой Л.Н.", "Достоевский Ф.М.", "Пушкин А.С.")
);
