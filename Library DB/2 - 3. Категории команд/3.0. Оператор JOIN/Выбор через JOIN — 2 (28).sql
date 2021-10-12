USE library;

SELECT name_author
FROM
(
	books 
    JOIN authors
	ON books.code_author = authors.code_author
)
JOIN publishing_house 
ON books.code_publish = publishing_house.code_publish 
WHERE publish = LOWER("Мир");
