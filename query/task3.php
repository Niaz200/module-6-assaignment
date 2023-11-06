SELECT c.name AS category_name, SUM(oi.unit_price * oi.quantity) AS total_revenue
FROM order_items oi
INNER JOIN products p ON oi.product_id = p.id
INNER JOIN categories c ON p.category_id = c.id
GROUP BY product_id
ORDER BY total_revenue DESC;