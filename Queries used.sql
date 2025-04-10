-- Query 1: Customers who placed more than 5 orders (filtered, grouped, and sorted)
SELECT customers.customer_id, customers.customer_unique_id, customers.customer_city, 
       COUNT(orders.order_id) AS total_orders
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id
HAVING total_orders > 5
ORDER BY total_orders DESC
LIMIT 5;

-- Query 2: Top 5 product categories by average price
SELECT products.product_category_name, COUNT(*) AS total_products, 
       AVG(order_items.price) AS avg_price
FROM order_items
JOIN products ON order_items.product_id = products.product_id
GROUP BY products.product_category_name
ORDER BY avg_price DESC
LIMIT 5;

-- Query 3: Orders with customer locations
SELECT orders.order_id, customers.customer_city, orders.order_status
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
LIMIT 5;

-- Query 4: Customers who have no orders (LEFT JOIN)
SELECT customers.customer_unique_id, orders.order_id, orders.order_status
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
WHERE orders.order_id IS NULL
LIMIT 5;

-- Query 5: Top 5 most expensive orders (using subquery)
SELECT order_id, total_price FROM (
    SELECT order_id, SUM(price) AS total_price
    FROM order_items
    GROUP BY order_id
) AS order_totals
ORDER BY total_price DESC
LIMIT 5;

-- Query 6: Total revenue and average order value
SELECT SUM(price) AS total_revenue, AVG(price) AS avg_order_value 
FROM order_items;
