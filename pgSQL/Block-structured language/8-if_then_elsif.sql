do $$
<<first_block>>
declare
	selected_account account%rowtype;
	input_account_number account.account_number%type:=6;
	account_level varchar(100);
begin
	SELECT *
	FROM account
	WHERE account_number=input_account_number
	INTO selected_account;

	if not found then
		raise notice 'The account number % could not be found', input_account_number;
	else
		if selected_account.balance > 0 and selected_account.balance <= 200 then
			account_level := 'Standard';
		elsif selected_account.balance > 200 and selected_account.balance <= 400 then
			account_level := 'Silver';
		elsif selected_account.balance > 400 and selected_account.balance <= 600 then
			account_level := 'Gold';
		else
			account_level := 'Platinum';
		end if;

		raise notice 'The account number % is in level %', selected_account.branch_name, account_level;
	end if;
end first_block $$;