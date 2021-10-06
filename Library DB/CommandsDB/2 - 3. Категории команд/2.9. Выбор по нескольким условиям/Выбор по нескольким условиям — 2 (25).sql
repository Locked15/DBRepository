USE library;

SELECT books.code_author, name_author, book_title
FROM authors, books
WHERE pages > 120 AND code_publish 
BETWEEN 10 AND 25
GROUP BY books.code_author = authors.code_author;
