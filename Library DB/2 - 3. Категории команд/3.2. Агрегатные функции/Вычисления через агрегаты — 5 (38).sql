USE library;

-- В целом, аналогично предыдущему, только сортируем в порядке убывания.
SELECT purchases.*, book_title
FROM purchases
JOIN books
ORDER BY cost DESC, amount DESC
LIMIT 1;
