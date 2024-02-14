-- Insert sample data into Authors table
INSERT INTO Authors (author_id, author_name) VALUES
(1, 'J.K. Rowling'),
(2, 'George Orwell'),
(3, 'Harper Lee');

-- Insert sample data into Books table
INSERT INTO Books (book_id, author_id, title, price, stock) VALUES
(1, 1, 'Harry Potter and the Philosopher''s Stone', 1599, 100),
(2, 1, 'Harry Potter and the Chamber of Secrets', 1699, 80),
(3, 2, 'Nineteen Eighty Four', 1249, 120),
(4, 3, 'To Kill a Mockingbird', 1499, 90);

-- Insert sample data into Customers table
INSERT INTO Customers (customer_id, name, email, mobile, address, gender, date_of_birth, last_purchase_date) VALUES
(1, 'John Doe', 'john@example.com', 1234567890, '123 Main St, Anytown, USA', 'M', '1990-05-15', '2024-02-10'),
(2, 'Jane Smith', 'jane@example.com', 9876543210, '456 Elm St, Othertown, USA', 'F', '1985-10-20', '2024-02-08');

-- Insert sample data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(1, 1, '2024-02-10', 0),
(2, 2, '2024-02-08', 0),
(3, 1, '2024-02-12', 0),
(4, 2, '2024-02-11', 0),
(5, 1, '2024-02-09', 0);

-- Insert sample data into OrderDetails table
INSERT INTO OrderDetails (order_detail_id, order_id, book_id, quantity) VALUES
(1, 1, 1, 2),
(2, 1, 3, 1),
(3, 2, 2, 1),
(4, 2, 4, 1),
(5, 3, 1, 1),
(6, 3, 2, 2),
(7, 4, 3, 2),
(8, 4, 4, 1),
(9, 5, 1, 3);