USE library;

SELECT name_company
FROM deliveries
JOIN
(
	books
    JOIN publishing_house
    ON books.code_publish = publishing_house.code_publish
)
ON publish = LOWER("Питер");
