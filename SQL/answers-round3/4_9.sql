SELECT DISTINCT O.customer_id, C.customer_name
FROM ordert O
JOIN customer C
ON O.customer_id=C.customer_id
WHERE order_date BETWEEN '2020-01-10' AND '2020-01-16'