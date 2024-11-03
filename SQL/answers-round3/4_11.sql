SELECT C.customer_id, C.customer_name
FROM ordert O
RIGHT JOIN customer C
ON O.customer_id=C.customer_id
WHERE O.order_id IS NULL