do $$
<<first_block>>
declare
	account_count integer := 0;
begin
	SELECT count(*)
	INTO account_count
	FROM account;

	raise notice 'The number of accounts is %', account_count;
end first_block $$