create table departamento(
	nome varchar(20),
	constraint PK_departamento_nome primary key(nome)
);

create table empregado(
	numero_func int,
	nome varchar(20),
	salario numeric(2),
	departamento varchar(20) constraint NN_empregado_departamento not null,
	chefiado_por int,
	constraint PK_empregado_numero_func primary key (numero_func),
	constraint FK_departamento2departamento foreign key(departamento) references departamento,
	constraint FK_chefiadopor2empregado foreign key(chefiado_por) references empregado
);
