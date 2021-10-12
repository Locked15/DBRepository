USE library;

-- Оператор "Between" берет последнее число включительно.
SELECT book_title, pages
FROM books
WHERE pages 
BETWEEN 200 AND 300;
