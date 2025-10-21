create table professor (
	nome varchar(20) constraint PK_professor_nome primary key
);

create table sala (
	nome varchar(20) constraint PK_sala_nome primary key
);

create table turma (
	nome varchar(20) constraint PK_turma_nome primary key,
	nomeSala varchar(20) constraint NN_turma_nomeSala not null,
	constraint FK_turma_nomeSala2Sala foreign key(nomeSala) references sala
);

create table leciona(
	nomeTurma varchar(20),
	nomeProfessor varchar(20),
	constraint PK_leciona_nomeTurma_nomeProfessor primary key (nomeTurma, nomeProfessor),
	constraint FK_nomeTurma2turma foreign key (nomeTurma) references turma,
	constraint FK_nomeProfessor2professor foreign key (nomeProfessor) references professor
);


