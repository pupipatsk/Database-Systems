SELECT SUM(O.ordered_quantity * P.standard_price) AS total_payment
FROM order_line O
JOIN product P
ON O.product_id=P.product_id
WHERE order_id=3