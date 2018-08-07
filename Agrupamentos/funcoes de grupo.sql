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

-- outras

select avg (nota_final) "Média", sum(nota_final) "Soma", max(nota_final) "Nota Máxima", min(nota_final) "Nota Mínima", count(*), min(periodo), max(periodo)
from aluno_na_disc;