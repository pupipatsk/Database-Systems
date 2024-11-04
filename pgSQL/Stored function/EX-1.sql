CREATE OR REPLACE FUNCTION get_customers_with_sum_balance()
RETURNS TABLE (
	customer_name VARCHAR,
	sum_balance NUMERIC)
AS
$$
BEGIN
	RETURN QUERY
	SELECT d.customer_name, SUM(a.balance)::NUMERIC(6,2) AS sum_balance
	FROM depositor d
	JOIN account a ON d.Account_number = a.Account_number
	GROUP BY d.customer_name
	ORDER BY sum_balance DESC;
END;
$$
LANGUAGE plpgsql;


select * from get_customers_with_sum_balance();