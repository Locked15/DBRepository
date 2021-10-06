USE library;

-- Вместо транслитного "Itogo" используем "Total"
SELECT book_title, (amount * cost) AS total
FROM purchases
JOIN books
ON date_order
BETWEEN '2002.01.01' AND '2002.06.01';
