WITH ProductOrderCount AS (
	SELECT p.product_id, p.product_description, COUNT(order_id) AS order_count
	FROM order_line ol
	JOIN product p ON p.product_id=ol.product_id
	GROUP BY p.product_id
	ORDER BY COUNT(order_id) DESC
)

SELECT product_id, product_description
FROM ProductOrderCount
WHERE order_count = (
	SELECT MAX(order_count) FROM ProductOrderCount
);