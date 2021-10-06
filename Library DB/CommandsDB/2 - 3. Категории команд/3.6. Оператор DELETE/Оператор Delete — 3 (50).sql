USE library;

-- А вот "inn" может быть NULL, поэтому делаем двойную проверку.
DELETE FROM deliveries
WHERE inn = "" OR inn IS NULL;
