CREATE OR REPLACE FUNCTION customer_level(p_moneylevel FLOAT)
	RETURNS VARCHAR(10)
	LANGUAGE plpgsql
	AS
$$
DECLARE
	lvl varchar(10);
BEGIN
	IF p_moneylevel > 1500 THEN
		lvl := 'PLATINUM';
	ELSEIF (p_moneylevel <= 500 AND p_moneylevel >= 100) THEN
		lvl := 'GOLD';
	ELSEIF p_moneylevel < 100 THEN
		lvl := 'SILVER';
	END IF;
	RETURN (lvl);
END;
$$


SELECT C.customer_name, A.account_number,
customer_level(A.balance)
FROM account A, customer C, depositor D
WHERE A.account_number = D.account_number AND
C.customer_name = D.customer_name;