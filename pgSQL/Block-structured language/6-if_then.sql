do $$
<<first_block>>
declare
	selected_account account%rowtype;
	input_account_number account.account_number%type:=0;
begin
	SELECT *
	FROM account
	WHERE account_number=input_account_number
	INTO selected_account;

	if not found then
		raise notice 'The account number % could not be found', input_account_number;
	end if;
end first_block $$;