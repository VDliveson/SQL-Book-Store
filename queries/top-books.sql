SELECT Books.title, SUM(OrderDetails.quantity) AS total_sold
FROM Books
JOIN OrderDetails ON Books.book_id = OrderDetails.book_id
GROUP BY Books.book_id
ORDER BY total_sold DESC
LIMIT 3;