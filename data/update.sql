-- Run after inserting all the data to update order total
UPDATE Orders
SET total_amount = (
    SELECT SUM(Books.price * OrderDetails.quantity)
    FROM OrderDetails
    INNER JOIN Books ON OrderDetails.book_id = Books.book_id
    WHERE OrderDetails.order_id = Orders.order_id
)