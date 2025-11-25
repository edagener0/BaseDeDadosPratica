select nome_emp, cidade, count(nome_func) as n_funcionarios from empresa left outer join trabalha
using (nome_emp)
group by nome_emp, cidade;