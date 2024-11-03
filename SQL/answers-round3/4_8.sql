SELECT C.customer_id, C.customer_name, COUNT(order_id) AS order_count
FROM ordert O
JOIN customer C
ON O.customer_id=C.customer_id
GROUP BY C.customer_id
ORDER BY COUNT(order_id) DESC
LIMIT 3;