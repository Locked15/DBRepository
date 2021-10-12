USE library;

-- Задать агрегатные функции в операторе "ON" нельзя, поэтому идем другим решением.
SELECT purchases.*, book_title
FROM purchases
JOIN books
ORDER BY cost, amount
LIMIT 1;
