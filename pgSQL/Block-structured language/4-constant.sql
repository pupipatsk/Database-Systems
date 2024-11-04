do $$
<<first_block>>
declare
	start_at constant time=now();
begin
	raise notice 'The currect time is %', start_at;
end first_block $$;