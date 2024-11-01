SELECT postal_code, COUNT(customer_id) AS customer_numbers
FROM customer
GROUP BY postal_code
HAVING COUNT(customer_id) > 1
ORDER BY customer_numbers DESC;