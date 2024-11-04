do $$
<<first_block>>
declare
	selected_accounts record;
begin
	for selected_accounts in SELECT account_number, branch_name, balance
		FROM account
		WHERE balance >= 100
		ORDER BY balance
	loop
		raise notice 'The account_number branch_name and balance is %, %, %',
			selected_accounts.account_number,
			selected_accounts.branch_name,
			selected_accounts.balance;
	end loop;
end first_block $$;