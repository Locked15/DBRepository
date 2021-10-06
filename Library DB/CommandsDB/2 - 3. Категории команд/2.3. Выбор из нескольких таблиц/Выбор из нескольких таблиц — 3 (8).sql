USE library;

SELECT book_title, pages, publish, city 
FROM books, publishing_house
ORDER BY publishing_house.code_publish;
