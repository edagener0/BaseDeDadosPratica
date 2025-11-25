create or replace function conta_func(nemp varchar) returns int
as $$
declare
	num_funcs int;
begin 
	select count(distinct nome_func) into num_funcs
	from trabalha
	where nome_emp = nemp;

	return num_funcs;
end
$$ language plpgsql


