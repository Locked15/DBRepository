USE library;

-- Создаем вложенный запрос, чтобы отобрать нужные значения.
SELECT book_title, pages, name_author 
FROM 
(
    SELECT authors.code_author, authors.name_author, books.book_title, books.pages 
	FROM authors 
	JOIN books ON authors.code_author = books.code_author
) AS first_command;
