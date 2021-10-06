USE library;

UPDATE books 
SET pages = 300
WHERE code_author = 56 AND book_title = LOWER("Мемуары");
