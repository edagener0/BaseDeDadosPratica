select f.nome_func  from funcionario f, gere g, funcionario fg
where f.nome_func  = g.nome_func and g.nome_gestor = fg.nome_func
and f.cidade = fg.cidade and f.rua = fg.rua;
