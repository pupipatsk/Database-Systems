SELECT DISTINCT ordert.customer_id, customer_name
FROM ordert
JOIN customer
ON ordert.customer_id=customer.customer_id
WHERE order_date BETWEEN '2020-01-10' AND '2020-01-16';