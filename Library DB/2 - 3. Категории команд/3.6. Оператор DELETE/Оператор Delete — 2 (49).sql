USE library;

-- Так как "name_author" не может быть NULL, проверяем только на пустое значение.
DELETE FROM authors
WHERE name_author = "";
