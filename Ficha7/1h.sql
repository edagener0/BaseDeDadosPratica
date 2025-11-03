select distinct empresa_nr.nome_emp from empresa_nr
where empresa_nr.nome_emp <> 'XPTO' and not exists (select empresa_nr.cidade from empresa_nr where empresa_nr.nome_emp = 'XPTO' except (
select en2.cidade from empresa_nr  en2 where en2.nome_emp = empresa_nr.nome_emp ));