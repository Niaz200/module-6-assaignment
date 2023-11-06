SELECT o.id AS order_id, p.name AS product_name, oi.quantity, oi.unit_price * oi.quantity AS total_amount
FROM orders o
INNER JOIN order_items oi ON o.id = oi.order_id
INNER JOIN products p ON oi.product_id = p.id
ORDER BY o.id ASC;