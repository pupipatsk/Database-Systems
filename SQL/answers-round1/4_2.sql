SELECT POSTAL_CODE, COUNT(*) AS customer_count
FROM CUSTOMER
GROUP BY POSTAL_CODE
HAVING COUNT(*) > 1
ORDER BY customer_count DESC;

