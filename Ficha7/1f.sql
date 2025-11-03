select funcionario.nome_func from funcionario, trabalha
where funcionario.nome_func  = trabalha.nome_func and trabalha.nome_emp <> 'UALG';