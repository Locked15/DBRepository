USE library;

SELECT * 
FROM authors
WHERE name_author LIKE 'Иванов%' OR '%Иванов%' OR '%Иванов';
