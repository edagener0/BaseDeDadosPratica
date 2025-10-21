create table pessoa (
	cc varchar(13),
	nome varchar(20),
	constraint PK_pessoa_cc primary key(cc)
);

create table aluno (
	cc varchar(13),
	numero_aluno int constraint UK_aluno_numero_aluno unique constraint NN_aluno_numero_aluno not null,
	constraint PK_aluno_cc primary key(cc)
);

create table professor (
	cc varchar(13),
	salario numeric(2),
	constraint PK_professor_cc primary key(cc),
	constraint FK_professor2pessoa foreign key(cc) references pessoa
);

create table professor_num_telefone(
	cc varchar(13),
	num_telefone varchar(9),
	constraint PK_professor_num_telefone_cc_numero_telefone primary key(cc, num_telefone),
	constraint FK_professor_num_telefone_cc2professor foreign key(cc) references professor
);