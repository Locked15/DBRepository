USE library;

SELECT book_title
FROM books
WHERE books.code_publish 
IN
(
	SELECT code_publish 
	FROM publishing_house 
	WHERE publish != LOWER("Питер-Софт")
);
