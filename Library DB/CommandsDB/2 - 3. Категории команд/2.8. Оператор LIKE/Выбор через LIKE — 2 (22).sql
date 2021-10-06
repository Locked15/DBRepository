USE library;

SELECT publish
FROM publishing_house
WHERE publish 
LIKE "Софт%" OR "%софт%" OR "софт%";
 