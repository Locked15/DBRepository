USE library;

SELECT books.code_author, name_author, book_title
FROM authors
JOIN books
ON pages > 120 AND code_publish 
BETWEEN 10 AND 25;
