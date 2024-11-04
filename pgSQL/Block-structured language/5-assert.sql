do $$
<<first_block>>
declare
	account_count integer:=0;
begin
	SELECT COUNT(*)
	INTO account_count
	FROM account;
	-- raise notice 'The number of accounts is %', account_count;
	assert account_count>1000, 'Test Assert';
end first_block $$;