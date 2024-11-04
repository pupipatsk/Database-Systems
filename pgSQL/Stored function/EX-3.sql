CREATE OR REPLACE FUNCTION get_branches_assets_greater_than(con NUMERIC)
RETURNS TABLE(
    branch_name VARCHAR,
    branch_city VARCHAR,
    assets NUMERIC
) AS
$$
BEGIN
    RETURN QUERY
    SELECT b.branch_name, b.branch_city, ROUND(b.assets::NUMERIC, 2) AS assets
    FROM branch b
    WHERE b.assets > con
    ORDER BY b.assets DESC;
END;
$$
LANGUAGE plpgsql;


select * from get_branches_assets_greater_than(100);