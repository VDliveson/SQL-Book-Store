# SQL-Book-Store
SQL Book Store management system for Blinkit SDE Intern Assignment

## ER Diagram
<img width="642" alt="image" src="Database ER diagram.png">

## Code flow

1. ```tables/tables.sql```
2. ```data/data.sql```
3. ```data/update.sql```
4. ```queries/top-books.sql```
5. ```queries/total-sales-for-period.sql```

**Queries:**

- SQL query to retrieve a list of top-selling books
```sql
SELECT Books.title, SUM(OrderDetails.quantity) AS total_sold
FROM Books
JOIN OrderDetails ON Books.book_id = OrderDetails.book_id
GROUP BY Books.book_id
ORDER BY total_sold DESC
LIMIT 3;
```
<img width="642" alt="image" src="https://github.com/VDliveson/SQL-Book-Store/assets/72307306/99ea3c75-4297-4264-89ad-85038d2e188c">

- SQL query to calculate total sales revenue for a given period
```sql
SELECT SUM(Orders.total_amount) AS total_sales
FROM Orders
WHERE Orders.order_date BETWEEN '2024-02-08' AND '2024-02-10';
```
<img width="172" alt="image" src="https://github.com/VDliveson/SQL-Book-Store/assets/72307306/987610ea-498c-4829-96f9-c68fe93725b1">
