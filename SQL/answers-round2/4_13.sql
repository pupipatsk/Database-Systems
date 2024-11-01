SELECT SUM(ordered_quantity*standard_price) AS total_payment
FROM order_line
JOIN product
ON product.product_id=order_line.product_id
WHERE order_id=3;