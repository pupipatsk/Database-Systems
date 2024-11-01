WITH ProductCount AS (
	SELECT product_id, SUM(ordered_quantity) AS total_quantity
	FROM order_line
	GROUP BY product_id
	ORDER BY total_quantity DESC
)

SELECT ProductCount.product_id, product_description
FROM ProductCount
JOIN product ON product.product_id=ProductCount.product_id
WHERE total_quantity = (
	SELECT MAX(total_quantity) FROM ProductCount
);