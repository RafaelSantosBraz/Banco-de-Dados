-- Cursos e Disciplinas
select c.descricao, d.descricao
from disciplina d, curso c
where c.cod_curso = d.cod_curso and
    d.descricao like 'E%';

-- nome aluno, nome disciplina, nome curso, periodo, nota final

select a.nome, d.descricao "Disciplina", c.descricao "Curso", ad.periodo, ad.nota_final
from aluno a, disciplina d, curso c, aluno_na_disc ad
where a.matric = ad.matric and
    ad.cod_disc = d.cod_disc and
    c.cod_curso = d.cod_curso
order by c.descricao, d.descricao, a.nome; 
