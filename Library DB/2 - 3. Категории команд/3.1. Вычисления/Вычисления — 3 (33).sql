USE library;

SELECT name_author, (YEAR(CURRENT_DATE) - YEAR(birthday)) AS years_old
FROM authors;
