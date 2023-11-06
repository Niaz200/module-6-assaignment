SELECT c.name, SUM(o.total_amount) AS total_purchase_amount
FROM customers c
INNER JOIN orders o ON c.id = o.customer_id
GROUP BY customer_id
ORDER BY total_purchase_amount DESC
LIMIT 5;