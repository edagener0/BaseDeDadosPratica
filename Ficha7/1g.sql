select funcionario.nome_func from funcionario, trabalha
where funcionario.nome_func = trabalha.nome_func and trabalha.nome_emp <> 'UALG' and
trabalha.salario > (select max(trabalha.salario) from trabalha where trabalha.nome_emp = 'UALG');