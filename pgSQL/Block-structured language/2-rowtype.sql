do $$
<<first_block>>
declare
	selected_account account%rowtype;
begin
	SELECT *
	INTO selected_account
	FROM account
	WHERE account_number='4';

	raise notice 'The branch_name and balance is %, %',
		selected_account.branch_name,
		selected_account.balance;
end first_block $$;