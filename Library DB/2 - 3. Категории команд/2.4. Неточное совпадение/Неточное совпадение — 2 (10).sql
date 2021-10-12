USE library;

SELECT book_title, pages, name_author
FROM authors, books
WHERE book_title LIKE 'Мемуары%'
GROUP BY authors.code_author = books.code_author;
