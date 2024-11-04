do $$
begin
	for counter in 1..5 loop
		raise notice 'Counter %', counter;
	end loop;
end $$;