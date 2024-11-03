SELECT C.customer_id, C.customer_name
FROM ordert O
JOIN customer C
ON O.customer_id=C.customer_id
GROUP BY C.customer_id
ORDER BY COUNT(order_id) DESC
LIMIT 1;