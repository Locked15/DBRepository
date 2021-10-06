USE library;

-- А вот в MSSQL есть нормальные диапазоны.
SELECT name_author
FROM authors
WHERE name_author 
BETWEEN 'В%' AND 'Г%';
