SELECT COUNT(order_id) AS total_orders
FROM ordert
WHERE order_date BETWEEN '2020-01-10' AND '2020-01-16'