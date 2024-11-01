SELECT customer.customer_id, customer_name
FROM customer
LEFT JOIN ordert
ON customer.customer_id=ordert.customer_id
WHERE ordert.customer_id IS NULL;