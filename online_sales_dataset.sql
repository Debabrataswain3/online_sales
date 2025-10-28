
-- Create database and use it
CREATE DATABASE IF NOT EXISTS online_sales;
USE online_sales;

-- Create orders table
CREATE TABLE IF NOT EXISTS orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    product_id INT,
    amount DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO orders (order_date, product_id, amount) VALUES
('2024-01-15', 101, 1200.00),
('2024-01-20', 102, 800.00),
('2024-02-05', 103, 650.00),
('2024-02-10', 101, 1200.00),
('2024-03-01', 104, 500.00),
('2024-03-12', 105, 950.00),
('2024-04-20', 106, 400.00),
('2024-04-25', 103, 700.00),
('2024-05-05', 102, 900.00),
('2024-05-20', 107, 1000.00);

-- Query 1: Monthly revenue and order volume
SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY order_year, order_month
ORDER BY order_year, order_month;

-- Query 2: Filter results for a specific period (Q1 2024)
SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-03-31'
GROUP BY order_year, order_month
ORDER BY order_year, order_month;
