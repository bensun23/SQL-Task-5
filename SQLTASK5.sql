🔹 Step 1: Create Sample Tables

-- Create Customer Table
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

-- Create Order Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
🔹 Step 2: Insert Sample Data

-- Insert into Customer
INSERT INTO Customer (customer_id, name, email)
VALUES
(1, 'Alice', 'alice@example.com'),
(2, 'Bob', 'bob@example.com'),
(3, 'Charlie', 'charlie@example.com'),
(4, 'David', 'david@example.com');

-- Insert into Orders
INSERT INTO Orders (order_id, customer_id, order_date, amount)
VALUES
(101, 1, '2024-06-01', 250.00),
(102, 1, '2024-06-05', 125.50),
(103, 2, '2024-06-07', 300.00),
(104, 5, '2024-06-09', 90.00); -- Non-existent customer (to test joins)
🔹 Step 3: INNER JOIN

SELECT c.name, o.order_id, o.amount
FROM Customer c
INNER JOIN Orders o ON c.customer_id = o.customer_id;
✅ Shows customers who have placed orders.

🔹 Step 4: LEFT JOIN

SELECT c.name, o.order_id, o.amount
FROM Customer c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;
✅ Shows all customers, with their orders (if any).

🔹 Step 5: RIGHT JOIN (Use only if supported by your DBMS)

SELECT c.name, o.order_id, o.amount
FROM Customer c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;
✅ Shows all orders, even if no matching customer exists.
(Note: MySQL supports RIGHT JOIN but SQLite does not.)

🔹 Step 6: FULL OUTER JOIN (Use workaround in MySQL/SQLite)

SELECT c.name, o.order_id, o.amount
FROM Customer c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
UNION
SELECT c.name, o.order_id, o.amount
FROM Customer c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;
✅ Combines LEFT and RIGHT JOIN results to simulate FULL OUTER JOIN.

🔹 Step 7: CROSS JOIN

SELECT c.name, o.order_id
FROM Customer c
CROSS JOIN Orders o;