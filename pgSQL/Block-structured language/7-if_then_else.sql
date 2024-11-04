do $$
<<first_block>>
declare
	selected_account account%rowtype;
	input_account_number account.account_number%type:=6;
begin
	SELECT *
	FROM account
	WHERE account_number=input_account_number
	INTO selected_account;

	if not found then
		raise notice 'The account number % could not be found', input_account_number;
	else
		raise notice 'The branch_name and balance is % and %', selected_account.branch_name, selected_account.balance;
	end if;
end first_block $$;