SELECT postal_code, COUNT(customer_id) AS cutomer_numbers
FROM customer
GROUP BY postal_code
ORDER BY COUNT(customer_id) DESC;