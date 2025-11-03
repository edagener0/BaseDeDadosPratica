select t.nome_func from  trabalha t
where t.salario > (
select avg(trabalha.salario) from trabalha where t.nome_emp = trabalha.nome_emp 
)