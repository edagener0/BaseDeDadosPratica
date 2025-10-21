create table comboio_local (
	numero int,
	tipo_maquina varchar(20),
	constraint PK_comboio_local_numero primary key(numero)
);

create table comboio_expresso (
	numero int,
	tipo_maquina varchar(20),
	constraint PK_comboio_expresso_numero primary key(numero)
);

create table estacao(
	nome varchar(20),
	localidade varchar(50),
	constraint PK_estacao_nome primary key(nome)
);

create table estacao_local(
	nome varchar(20),
	constraint PK_estacao_local_nome primary key(nome),
	constraint FK_estacao_local_nome2estacao foreign key(nome) references estacao
);

create table estacao_expresso(
	nome varchar(20),
	constraint PK_estacao_expresso_nome primary key(nome),
	constraint FK_estacao_expresso_nome2estacao foreign key(nome) references estacao
);

create table paragem_exp(
	numero int,
	nome varchar(20),
	hora timestamp,
	constraint PK_paragem_exp_numero_nome primary key(numero, nome),
	constraint FK_paragem_exp_numero2comboio_expresso foreign key(numero) references comboio_expresso,
	constraint FK_paragem_exp_nome2estacao_expresso foreign key(nome) references estacao_expresso
);

create table paragem_loc(
	numero int,
	nome varchar(20),
	hora timestamp,
	constraint PK_paragem_loc_numero_nome primary key(numero, nome),
	constraint FK_paragem_loc_numero2comboio_local foreign key(numero) references comboio_local,
	constraint FK_paragem_loc_nome2estacao foreign key(nome) references estacao
	
);