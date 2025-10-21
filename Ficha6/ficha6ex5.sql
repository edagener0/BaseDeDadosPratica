create table aluno(
	numero_aluno int,
	nome varchar(20),
	constraint PK_aluno primary key(numero_aluno)
);

create table exame(
	exame_id int,
	descricao varchar(50),
	data_inicio timestamp,
	data_fim timestamp,
	constraint PK_exame primary key(exame_id)
);

create table disciplina (
	cod_disc int,
	nome varchar(50),
	constraint PK_disciplina_cod_disc primary key(cod_disc)
);

create table disciplina_execucao(
	cod_disc int,
	seq_id int,
	ano int,
	semestre int,
	constraint PK_disciplina_execucao primary key(cod_disc, seq_id, ano, semestre),
	constraint FK_disciplina_execucao_cod_disc foreign key(cod_disc) references disciplina
	);

create table notas_exame(
	num_aluno int,
	exame_id int,
	cod_disc int,
	seq_id int,
	ano int,
	semestre int,
	nota int,
	constraint PK_notas_exame primary key(num_aluno, exame_id, cod_disc, seq_id, ano, semestre),
	constraint FK_notas_exame_num_aluno2aluno foreign key(num_aluno) references aluno,
	constraint FK_notas_exame_exame_id2exame foreign key(exame_id) references exame,
	constraint FK_notas_exame_cod_disc_seq_id_ano_semestre2disc_d_exec foreign key(cod_disc, seq_id, ano, semestre) references disciplina_execucao
	);