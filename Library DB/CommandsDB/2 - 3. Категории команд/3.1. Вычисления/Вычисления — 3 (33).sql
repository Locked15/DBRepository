USE library;

SELECT name_author, (CURRENT_DATE() - birthday) AS years_old
FROM authors;
