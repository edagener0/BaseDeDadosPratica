/*select
 * from
 * where
 * group by
 * having
 * */

select nome_emp , count(*)  from trabalha group by nome_emp having count(*) >= all(
	select count(*)
	from trabalha t
	group by nome_emp
)