INSERT INTO Autores
VALUES
    (1, 'J. K. Rowling', 'aaaa');

INSERT INTO Autores
VALUES
    (2, 'Michio Kaku', 'aabb');

INSERT INTO Autores
VALUES
    (3, 'Friedrich Nietzsche', 'abcdef');

INSERT INTO Autores
VALUES
    (4, 'Dante Alighieri', 'abbcd');

INSERT INTO Autores
VALUES
    (5, 'Ransom Riggs', 'aacd');

INSERT INTO Editoras
VALUES
    (1, 'Companhia Das Letras', 'Rua Bandeira Paulista, 702, cj. 32', '04532002');

INSERT INTO Editoras
VALUES
    (2, 'Ediouro', 'RUA CANDELÁRIA, 60 - 7º ANDAR - CENTRO, RIO DE JANEIRO - RJ', '20091020');

INSERT INTO Editoras
VALUES
    (3, 'Editora 34', 'Rua Hungria, 592, Jardim Europa', '01455000');

INSERT INTO Editoras
VALUES
    (4, 'Rocco', 'Av. Pres. Wilson, 231 – 8º andar', '20030021');

INSERT INTO Editoras
VALUES
    (5, 'Intrínseca', 'Rua Marquês de São Vicente, 99 / 3º andar Gávea - Rio de Janeiro - RJ', '22451041');

INSERT INTO PalavrasChave
VALUES
    ('Ficção');

INSERT INTO PalavrasChave
VALUES
    ('Romance');

INSERT INTO PalavrasChave
VALUES
    ('Fantástica');

INSERT INTO PalavrasChave
VALUES
    ('Clássica');

INSERT INTO PalavrasChave
VALUES
    ('Juvenil');

INSERT INTO PalavrasChave
VALUES
    ('Científica');

INSERT INTO Livros
VALUES
    (1, '85-359-0644-4', 'O Cosmo de Einstein', 2005, 'primeira', 1, 1);

INSERT INTO Livros
VALUES
    (2, '978-85-325-30001-1', 'Harry Potter e as Relíquias da Morte', 2015, 'primeira', 2, 4);

INSERT INTO Livros
VALUES
    (3, '9788575563335', 'Assim Falava Zaratustra', 2004, 'quarta', 3, 2);

INSERT INTO Livros
VALUES
    (4, '978-85-7326-424-1', 'A Divina Comédia', 2014, 'segunda', 4, 3);

INSERT INTO Livros
VALUES
    (5, '978-85-8057-688-7', 'O Lar da Srta. Peregrine para Crianças Peculiares', 2017, 'primeira', 5, 5);

INSERT INTO LivrosAutores
VALUES
    (1, 2);

INSERT INTO LivrosAutores
VALUES
    (2, 1);

INSERT INTO LivrosAutores
VALUES
    (3, 3);

INSERT INTO LivrosAutores
VALUES
    (4, 4);

INSERT INTO LivrosAutores
VALUES
    (5, 5);

INSERT INTO LivrosPalavras
VALUES
    ('Científica', 1);

INSERT INTO LivrosPalavras
VALUES
    ('Fantástica', 2);

INSERT INTO LivrosPalavras
VALUES
    ('Clássica', 3);

INSERT INTO LivrosPalavras
VALUES
    ('Clássica', 4);

INSERT INTO LivrosPalavras
VALUES
    ('Juvenil', 5);

INSERT INTO Exemplares
VALUES
    (1,'2018-06-21', 1);

INSERT INTO Exemplares
VALUES
    (2,'1998-08-21', 2);

INSERT INTO Exemplares
VALUES
    (3,'2018-06-21', 3);

INSERT INTO Exemplares
VALUES
    (4,'2018-06-23', 4);

INSERT INTO Exemplares
VALUES
    (5,'2005-12-10', 5);

INSERT INTO Leitor
VALUES
    (1, 'Rafael dos Santos Braz', 'Rua Irineu - você não sabe nem eu', '86360000', 'Bandeirantes');

INSERT INTO Leitor
VALUES
    (2, 'José Henrique Ricordi Cruz', 'Rua José Caciola', '17123000', 'Bauru');

INSERT INTO Leitor
VALUES
    (3, 'Bianca L. V.', 'Rodovia BR-369 Km 54, Vila Maria', '59092450', 'Londrina');

INSERT INTO Leitor
VALUES
    (4, 'Irineu', 'Rua Estados Unidos', '12345678', 'Apucarana');

INSERT INTO Leitor
VALUES
    (5, 'Gabriel dos Santos C. B.', 'Rua Carlos Gomes', '17120120', 'Agudos');

INSERT INTO Requisicoes (IdRequisicao, DataRequisicao, DataPrevEntrega, IdExemplar, IdLeitor)
VALUES
    (1, '2018-06-25 12:52:00+03', '2018-07-02 12:52:00+03', 1, 1);

INSERT INTO Requisicoes (IdRequisicao, DataRequisicao, DataPrevEntrega, IdExemplar, IdLeitor)
VALUES
    (2, '2017-01-01 00:00:00+03', '2017-01-08 00:00:00+03', 1, 3);

INSERT INTO Requisicoes (IdRequisicao, DataRequisicao, DataPrevEntrega, IdExemplar, IdLeitor)
VALUES
    (3, '2018-06-25 13:00:00+03', '2018-07-02 13:00:00+03', 2, 2);

INSERT INTO Requisicoes (IdRequisicao, DataRequisicao, DataPrevEntrega, IdExemplar, IdLeitor)
VALUES
    (4, '2009-09-09 13:07:00+03', '2009-09-16 13:07:00+03', 4, 5);

INSERT INTO Requisicoes (IdRequisicao, DataRequisicao, DataPrevEntrega, IdExemplar, IdLeitor)
VALUES
    (5, '2015-12-01 13:07:00+03', '2015-12-08 13:07:00+03', 2, 1);

