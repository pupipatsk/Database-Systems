-- Sol.1
-- WITH OrderCount AS (
-- 	SELECT customer_id, COUNT(order_id) AS order_count
-- 	FROM ordert
-- 	GROUP BY customer_id
-- 	-- ORDER BY order_count DESC
-- )

-- SELECT OrderCount.customer_id, customer_name, order_count
-- FROM OrderCount
-- JOIN customer
-- ON customer.customer_id=OrderCount.customer_id
-- ORDER BY order_count DESC
-- LIMIT 3;

-- Sol.2
SELECT ordert.customer_id, customer_name, COUNT(order_id) AS order_count
FROM ordert
JOIN customer
ON customer.customer_id=ordert.customer_id
GROUP BY ordert.customer_id, customer.customer_name
ORDER BY order_count DESC
LIMIT 3;