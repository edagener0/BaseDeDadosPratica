create or replace view func_emps(nf, c, ne) as
select nome_func, cidade, coalesce(nome_emp, 'n/a') from funcionario left outer join trabalha
using (nome_func);

select * from func_emps