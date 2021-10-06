USE library;

-- Оператор "Lower" делает выборку регистро-независимой.
SELECT name_company
FROM deliveries
WHERE name_company 
LIKE LOWER("%ский");
