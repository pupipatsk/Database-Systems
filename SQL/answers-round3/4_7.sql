SELECT O.product_id, P.product_description
FROM order_line O
JOIN product P
ON O.product_id=P.product_id
GROUP BY O.product_id, P.product_description
ORDER BY COUNT(order_id) DESC
LIMIT 1;