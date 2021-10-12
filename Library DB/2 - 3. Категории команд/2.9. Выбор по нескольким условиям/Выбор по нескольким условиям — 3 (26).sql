USE library;

SELECT publish
FROM publishing_house
WHERE city = LOWER("Новосибирск") AND 
code_publish IN
(
	SELECT code_publish
    FROM books
    WHERE book_title 
    LIKE LOWER("Труды%")
);
