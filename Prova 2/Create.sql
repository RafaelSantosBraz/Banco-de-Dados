CREATE TABLE Alunos
(
    cod_aluno INTEGER,
    nome VARCHAR(100),
    endereco VARCHAR(120),
    cidade VARCHAR(100),
    uf CHAR(2),
    sexo CHAR(1),
    CONSTRAINT pk_alunos PRIMARY KEY (cod_aluno)
);

CREATE TABLE Cursos
(
    cod_curso INTEGER,
    descricao VARCHAR(200),
    categoria VARCHAR(120),
    CONSTRAINT pk_cursos PRIMARY KEY (cod_curso)
);

CREATE TABLE Cargos
(
    cod_cargo INTEGER,
    descricao VARCHAR(200),
    salario_min REAL,
    salario_max REAL,
    tipo_cargo VARCHAR(120),
    CONSTRAINT pk_cargos PRIMARY key (cod_cargo)
);

CREATE TABLE Funcionarios
(
    cod_func INTEGER,
    nome VARCHAR(120),
    cod_cargo INTEGER,
    endereco VARCHAR(120),
    cidade VARCHAR(100),
    uf CHAR(2),
    sexo CHAR(1),
    dtnasc DATE,
    salario REAL,
    CONSTRAINT pk_funcionarios PRIMARY key (cod_func),
    CONSTRAINT fk_cargos FOREIGN KEY (cod_cargo) REFERENCES Cargos(cod_cargo)
);

CREATE TABLE Turmas
(
    cod_turma INTEGER,
    cod_curso INTEGER,
    cod_func INTEGER,
    dataini DATE,
    datafim DATE,
    sala INTEGER,
    CONSTRAINT pk_turmas PRIMARY key (cod_turma),
    CONSTRAINT fk_cursos FOREIGN KEY (cod_curso) REFERENCES Cursos(cod_curso),
    CONSTRAINT fk_funcionarios FOREIGN key (cod_func) REFERENCES Funcionarios(cod_func)
);

CREATE TABLE Alunos_Turmas
(
    cod_aluno INTEGER,
    cod_turma INTEGER,
    numero_inscr INTEGER,
    CONSTRAINT pk_alunos_turmas PRIMARY KEY (cod_aluno, cod_turma),
    CONSTRAINT fk_alunos FOREIGN key (cod_aluno) REFERENCES Alunos(cod_aluno),
    CONSTRAINT fk_turmas FOREIGN key (cod_turma) REFERENCES Turmas(cod_turma)
);