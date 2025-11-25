select trabalha.nome_emp, count(trabalha.nome_func ) as n_funcionarios, avg(trabalha.salario) as salario_medio from trabalha
group by trabalha.nome_emp