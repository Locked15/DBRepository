USE library;

SELECT name_author
FROM authors
WHERE birthday BETWEEN '1840.01.01' AND '1860.06.01';
