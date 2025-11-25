select nome_func, cidade, coalesce(nome_emp, 'n/a') from funcionario left outer join trabalha
using (nome_func)