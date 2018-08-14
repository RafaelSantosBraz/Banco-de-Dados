-- tudo que não for função de agragação deve estar no group by

-- média
select avg (nota_final)
from aluno_na_disc;

select d.cod_curso, avg (ad.nota_final) Media_por_curso
from aluno_na_disc ad, disciplina d
where d.cod_disc = ad.cod_disc
group by d.cod_curso
order by d.cod_curso;

select d.cod_curso, d.cod_disc, avg (ad.nota_final) Media_por_curso
from aluno_na_disc ad, disciplina d
where d.cod_disc = ad.cod_disc
group by d.cod_curso, d.cod_disc
order by d.cod_curso;

select d.cod_curso, d.cod_disc, avg (ad.nota_final) Media_por_curso
from aluno_na_disc ad, disciplina d
where d.cod_disc = ad.cod_disc
group by d.cod_curso, d.cod_disc
having avg(ad.nota_final) >= 7
order by d.cod_curso;

-- exemplos de outras

select avg (nota_final) "Média", sum(nota_final) "Soma", max(nota_final) "Nota Máxima", min(nota_final) "Nota Mínima", count(*), min(periodo), max(periodo)
from aluno_na_disc;

-- Exercício

-- tudo que NÃO for função de agrupamento DEVE estar no group by
-- número de alunos por disciplina
select cod_disc, count(*) "Total de Aluno"
from aluno_na_disc
group by cod_disc
having count(*) >= 3
order by cod_disc;

-- agrupar por curso, disciplina e trazer a média (com duas casas decimais) e a quantidade de alunos
select d.cod_curso, ad.cod_disc, count(*) "Total de Aluno", round(avg(ad.nota_final), 2) "Média Final"
from aluno_na_disc ad, disciplina d
where d.cod_disc = ad.cod_disc
group by d.cod_curso, ad.cod_disc
order by d.cod_curso, ad.cod_disc;

-- having analisa os resultados do agrupamento. O where analisa registro a registro da tabela
select d.cod_curso, ad.cod_disc, count(*) "Total de Aluno", round(avg(ad.nota_final), 2) "Média Final"
from aluno_na_disc ad, disciplina d
where d.cod_disc = ad.cod_disc
group by d.cod_curso, ad.cod_disc
having avg(ad.nota_final) between 6.00 and 8.00
order by d.cod_curso, ad.cod_disc;

-- subconsulta (consulta aninhada) é um select embutido em um SQL

select matric, nome
from aluno
where extract('Year' from dt_nasc) = extract('Year' from (
select dt_nasc
from aluno
where matric = 'A23'
));

select matric, nome, cidade
from aluno
where cidade in (select cidade
from aluno
where matric in ('A22', 'A23'));

select a.matric, a.nome
from aluno a, aluno_na_disc ad
where a.matric = ad.matric and ad.nota_final > (select avg(nota_final)
    from aluno_na_disc);

select a.matric, a.nome
from aluno a, aluno_na_disc ad
where a.matric = ad.matric and ad.nota_final > (select avg(nota_final)
    from aluno_na_disc
    where cod_disc = 'BDII');

select cod_disc, round(avg(nota_final), 2)
from aluno_na_disc
group by cod_disc
having avg(nota_final) > (select avg(nota_final)
from aluno_na_disc
where cod_disc = 'BDI');
