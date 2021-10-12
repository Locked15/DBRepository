USE library;

SELECT book_title 
AS Book_Name
FROM books
WHERE code_publish
IN
(
	SELECT code_publish
    FROM publishing_house
    WHERE publish
    IN (LOWER("Питер-Софт"), LOWER("Наука"), LOWER("Альфа"))
);
