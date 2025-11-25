create or replace function val_cidade() returns trigger
as $$
begin 
if not exists (
	select * from funcionario f, empresa e
	where f.nome_func = new.nome_func and
	e.nome_emp = new.nome_emp and
	e.cidade = f.cidade
)
then
	raise exception 'A cidade do funcionário % deve ser igual à da sua empresa', new.nome_func;
end if;

return new;
end
$$ language plpgsql


create or replace function val_cidade2() returns trigger
as $$
declare
	cid_func varchar;
	cid_emp varchar;
begin 
select cidade into cid_func
from funcionario
where nome_func = new.nome_func;

select cidade into cid_emp
from nome_emp
where nome_emp = new.nome_emp;

if cid_func <> cid_emp
then
	raise exception 'A cidade do funcionário % deve ser igual à da sua empresa', new.nome_func;
end if

return new;
end
$$ language plpgsql


create or replace trigger t_trabalha_val_cidade
after insert or update on trabalha
for each row
execute function val_cidade();

