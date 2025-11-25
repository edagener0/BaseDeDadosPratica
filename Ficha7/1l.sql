select trabalha.nome_emp from trabalha
group by trabalha.nome_emp 
having avg(trabalha.salario) > (
select avg(salario) from trabalha
where trabalha.nome_emp = 'XPTO'
)