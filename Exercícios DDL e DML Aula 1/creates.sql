CREATE TABLE Aluno
(
	matricula char(5),
	nome varchar(50) not null,
	endereco varchar(60),
	bairro varchar(40),
	dt_nascimento date,
	sexo char(1),
	constraint pk_aluno primary key (matricula)
);

create table Curso
(
	cod_curso int,
	descricao varchar(50),
	constraint pk_curso primary key (cod_curso)
);

create table Disciplina
(
	cod_disciplina int,
	descricao varchar(50),
	num_creditos int,
	cod_curso int,
	cod_disciplina_pre_requisito int,
	constraint pk_disciplina primary key (cod_disciplina),
	constraint fk_curso foreign key (cod_curso) references Curso(cod_curso),
	constraint fk_disciplina foreign key (cod_disciplina_pre_requisito) references Disciplina(cod_disciplina)
);

create table Aluno_Na_Disciplina
(
	matricula char(5),
	cod_disciplina int,
	periodo int,
	nota_final real,
	constraint pk_aluno_na_disciplina primary key (matricula, cod_disciplina, periodo),
	constraint fk_aluno foreign key (matricula) references Aluno(matricula),
	constraint fk_disciplina foreign key (cod_disciplina) references Disciplina(cod_disciplina)
);

create table Grade_Conceito
(
	conceito int,
	nota_inicial real,
	nota_final real,
	constraint pk_grade_conceito primary key (conceito)
);

commit;