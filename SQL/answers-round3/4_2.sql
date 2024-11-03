SELECT postal_code, COUNT(customer_id) AS cutomer_numbers
FROM customer
GROUP BY postal_code
HAVING COUNT(customer_id)>1
ORDER BY COUNT(customer_id) DESC;