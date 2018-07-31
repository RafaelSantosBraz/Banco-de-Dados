-- a
DROP TABLE Alunos;

-- b
DELETE FROM Cursos 
    WHERE categoria IN ('informártica', 'RH');

-- c
UPDATE Alunos 
    SET nome = 'José Carlos Júnior'
    WHERE nome = 'José Carlos Jr.';

-- d
SELECT nome, cidade, uf
FROM Alunos
Where cidade IN ('Bandeirantes', 'Londrina') AND
    nome NOT like '%Silva' AND
    sexo = 'M';

-- e (exercício estará na próxima prova)
SELECT *
FROM Funcionarios
WHERE uf = 'PR' AND
    cidade IN ('Londrina', 'Bandeirantes') AND
    salario BETWEEN 1550.50 AND 5600 AND
    cod_cargo IN (SELECT cod_cargo
    FROM Cargos
    WHERE descricao IN ('Analista', 'Supervisor'))
ORDER BY salario desc, nome asc;

-- f
SELECT nome, salario, salario * 1.15 AS 'Novo_Salário';