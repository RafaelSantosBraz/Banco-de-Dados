CREATE TABLE Autores
(
    IdAutor INTEGER,
    Nome VARCHAR(200) NOT NULL,
    DDN CHAR(20),
    CONSTRAINT pk_autores PRIMARY KEY (IdAutor)
);

CREATE TABLE Editoras
(
    IdEditora INTEGER,
    Nome VARCHAR(150),
    Endereco VARCHAR(150),
    CEP CHAR(20),
    CONSTRAINT pk_editoras PRIMARY KEY (IdEditora)
);

CREATE TABLE PalavrasChave
(
    IdPalavra VARCHAR(20),
    CONSTRAINT pk_palavras_chave PRIMARY KEY (IdPalavra)
);

CREATE TABLE Livros
(
    IdLivro INTEGER,
    ISBN CHAR(20),
    Titulo VARCHAR(50),
    Ano CHAR(4),
    Edicao CHAR(20),
    Quota NUMERIC(5,0),
    IdEditora INTEGER,
    CONSTRAINT pk_livros PRIMARY key (IdLivro),
    CONSTRAINT fk_editoras FOREIGN KEY (IdEditora) REFERENCES Editoras(IdEditora)
);

CREATE TABLE LivrosAutores
(
    IdLivro INTEGER,
    IdAutor INTEGER,
    CONSTRAINT fk_livros FOREIGN KEY (IdLivro) REFERENCES Livros(IdLivro),
    CONSTRAINT fk_autores FOREIGN KEY (IdAutor) REFERENCES Autores(IdAutor)
);

CREATE TABLE LivrosPalavras
(
    IdPalavra VARCHAR(20),
    IdLivro INTEGER,
    CONSTRAINT fk_palavras_chave FOREIGN KEY (IdPalavra) REFERENCES PalavrasChave(IdPalavra),
    CONSTRAINT fk_livros FOREIGN KEY (IdLivro) REFERENCES Livros(IdLivro)
);

CREATE TABLE Exemplares
(
    IdExemplar INTEGER,
    DataAquisicao DATE,
    IdLivro INTEGER,
    CONSTRAINT pk_exemplares PRIMARY KEY (IdExemplar),
    CONSTRAINT fk_livros FOREIGN KEY (IdLivro) REFERENCES Livros(IdLivro)
);

CREATE TABLE Leitor
(
    IdLeitor INTEGER,
    Nome VARCHAR(200),
    Endereco VARCHAR(200),
    CEP CHAR(20),
    Localidade VARCHAR(150),
    CONSTRAINT pk_leitor PRIMARY KEY (IdLeitor)
);

CREATE TABLE Requisicoes
(
    IdRequisicao INTEGER,
    DataRequisicao TIMESTAMP,
    DataPrevEntrega TIMESTAMP,
    DataRealEntrega TIMESTAMP,
    ValorMulta DECIMAL(10,2),
    IdExemplar INTEGER,
    IdLeitor INTEGER,
    CONSTRAINT pk_requisicoes PRIMARY KEY (IdRequisicao),
    CONSTRAINT fk_exemplares FOREIGN KEY (IdExemplar) REFERENCES Exemplares(IdExemplar),
    CONSTRAINT fk_leitor FOREIGN KEY (IdLeitor) REFERENCES Leitor(IdLeitor)
);
