WITH ProductOrderCount AS (
	SELECT product_id, COUNT(order_id) AS order_count
	FROM order_line
	GROUP BY product_id
)

SELECT ProductOrderCount.product_id, product_description
FROM ProductOrderCount
JOIN product
ON ProductOrderCount.product_id=product.product_id
WHERE order_count = (
	SELECT MAX(order_count) FROM ProductOrderCount
)