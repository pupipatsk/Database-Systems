CREATE OR REPLACE FUNCTION get_account_balance_stat(
	OUT min_balance NUMERIC,
	OUT max_balance NUMERIC,
	OUT avg_balance NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
	SELECT
		MIN(balance)::numeric(6,2),
		MAX(balance)::numeric(6,2),
		AVG(balance)::numeric(6,2)
	INTO min_balance, max_balance, avg_balance
	FROM account;
END;
$$


select get_account_balance_stat();

select * from get_account_balance_stat();