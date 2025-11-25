select trabalha.nome_emp from trabalha
group by trabalha.nome_emp
having sum(trabalha.salario) <= all(
select sum(trabalha.salario) from trabalha
group by trabalha.nome_emp
)