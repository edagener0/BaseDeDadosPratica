select funcionario.nome_func from funcionario, trabalha, empresa
where funcionario.nome_func = trabalha.nome_func  and trabalha.nome_emp  = empresa.nome_emp
	and empresa.cidade = funcionario.cidade;