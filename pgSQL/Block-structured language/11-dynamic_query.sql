do $$
declare
	sort_type smallint := 1;
	rec_count int := 10;
	rec record;
	query text;
begin
	query := 'select branch_name, balance from account ';
	if sort_type = 1 then
		query := query || 'order by branch_name';
	elsif sort_type = 2 then
		query := query || 'order by balåance';
	else
		raise 'invalid sort type %s', sort_type;
	end if;

	for rec in execute query using rec_count
	loop
		raise notice '% - %', rec.balance, rec.branch_name;
	end loop;
end; $$