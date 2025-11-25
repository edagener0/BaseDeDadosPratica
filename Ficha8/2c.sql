with emp_avg(nemp, asal) as (
select nome_emp, avg(salario) from trabalha
group by nome_emp)

select nome_func, salario, salario - asal as diferenca from emp_avg, trabalha
where emp_avg.nemp = trabalha.nome_emp 