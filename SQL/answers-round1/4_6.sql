WITH CustomerOrderCounts AS (
    SELECT C.CUSTOMER_ID, C.CUSTOMER_NAME, COUNT(O.ORDER_ID) AS order_count
    FROM CUSTOMER C
    JOIN ORDERT O ON C.CUSTOMER_ID = O.CUSTOMER_ID
    GROUP BY C.CUSTOMER_ID, C.CUSTOMER_NAME
)
SELECT CUSTOMER_ID, CUSTOMER_NAME
FROM CustomerOrderCounts
WHERE order_count = (
    SELECT MAX(order_count) FROM CustomerOrderCounts
);
