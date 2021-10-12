USE library;

SELECT DISTINCT name_company, book_title
FROM books, deliveries 
JOIN purchases 
ON date_order
BETWEEN "2002.01.01" AND "2003.12.31";
