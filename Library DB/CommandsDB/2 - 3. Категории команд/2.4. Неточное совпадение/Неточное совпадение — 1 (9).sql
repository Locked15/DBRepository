USE library;

-- Для поиска по фрагменту используется оператор "LIKE". Символ '%' означает то, что перед/после фрагмента может быть ещё что-то.
SELECT name_company, phone, inn
FROM deliveries
WHERE name_company LIKE 'ОАО%';
