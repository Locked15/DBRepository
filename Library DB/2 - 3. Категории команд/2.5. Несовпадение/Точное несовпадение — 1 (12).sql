USE library;

SELECT * 
FROM publishing_house
WHERE city != LOWER("Москва");
