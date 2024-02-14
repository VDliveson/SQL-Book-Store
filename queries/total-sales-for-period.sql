SELECT SUM(Orders.total_amount) AS total_sales
FROM Orders
WHERE Orders.order_date BETWEEN '2024-02-08' AND '2024-02-10';