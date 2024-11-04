CREATE OR REPLACE FUNCTION get_customers_with_pattern(p_pattern VARCHAR)
RETURNS TABLE(
	cust_name VARCHAR,
	cust_street VARCHAR
)
LANGUAGE plpgsql
AS
$$
BEGIN
	RETURN query
	SELECT customer_name, customer_street
	FROM customer
	WHERE customer_name LIKE p_pattern;
END;
$$


select get_customers_with_pattern('M%');

select * from get_customers_with_pattern('M%');