SELECT c.id AS customer_id, c.name, c.email, c.location, COUNT(customer_id) AS total_orders
FROM customers c
LEFT JOIN orders ON c.id = orders.customer_id
GROUP BY customer_id
ORDER BY total_orders DESC;