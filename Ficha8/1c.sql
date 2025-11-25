update trabalha
set salario = salario * case when salario * 1.1 > 21000 then 1.03 else 1.1 end 
where nome_func in (
select nome_gestor from gere
)
