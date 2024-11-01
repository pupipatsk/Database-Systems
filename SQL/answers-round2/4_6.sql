WITH OrderCount AS (
	SELECT customer_id, COUNT(order_id) AS number_of_orders
	FROM ordert
	GROUP BY customer_id
	ORDER BY number_of_orders DESC
)

SELECT OrderCount.customer_id, customer_name
FROM OrderCount
JOIN customer ON customer.customer_id=OrderCount.customer_id
WHERE number_of_orders = (
	SELECT MAX(number_of_orders) FROM OrderCount
);