CREATE OR REPLACE FUNCTION get_all_customers_with_their_level()
RETURNS TABLE (
    customer_name VARCHAR,
    sum_balance NUMERIC(6,2),
    customer_level VARCHAR)
AS
$$
BEGIN
    RETURN QUERY
    SELECT
        d.customer_name,
        SUM(a.balance)::NUMERIC(6,2) AS sum_balance,
        CASE
            WHEN SUM(a.balance) > 1500 THEN 'PLATINUM'
            WHEN SUM(a.balance) BETWEEN 100 AND 500 THEN 'GOLD'
            WHEN SUM(a.balance) < 100 THEN 'SILVER'
        END::VARCHAR AS customer_level
    FROM depositor d
    JOIN account a ON d.Account_number = a.Account_number
    GROUP BY d.customer_name
    ORDER BY SUM(a.balance) DESC;
END;
$$
LANGUAGE plpgsql;


select * from get_all_customers_with_their_level();
