select nome, cidade from aluno;

-- distinct faz exibir apenas os resultados diferentes
select distinct cidade from aluno;

select distinct cidade, bairro from aluno;

select distinct cidade, bairro from aluno 
order by cidade desc;

select distinct cidade, bairro from aluno 
order by cidade, bairro;

select distinct cidade, bairro from aluno 
order by cidade desc, bairro asc;

select distinct cidade, bairro from aluno 
order by 1 asc, 2 desc;

select distinct cidade, bairro, dt_nasc from aluno 
order by 1 asc, 2 desc;

select distinct cidade, bairro, dt_nasc from aluno 
order by 3 asc, 1 asc;

select distinct cidade, bairro, dt_nasc from aluno 
order by 3, 1;

select distinct cidade, bairro, dt_nasc as "Data de Nascimento" from aluno 
order by 3 asc, 1 asc;

select distinct cidade, bairro, dt_nasc "Data de Nascimento" from aluno 
order by 3 asc, 1 asc;

select distinct cidade, bairro, dt_nasc "Data de Nascimento", 52*68 from aluno 
order by 3 asc, 1 asc;

select 52*68 as "Nada a ver" from aluno;

select current_date - dt_nasc "Quantidade de Dias" from aluno;

select * from aluno;

select nome, sexo, cidade, bairro from aluno where cidade = 'Londrina' and (bairro = 'Centro' or bairro =  'Barra Suja');

select nome, sexo, cidade, bairro from aluno where cidade = 'Londrina' and (bairro = 'Centro' or bairro =  'Barra Suja') order by cidade, nome;

select nome, sexo, cidade, bairro from aluno where cidade = 'Londrina' and bairro IN ('Centro', 'Barra Suja') order by cidade, nome;

select nome, sexo, cidade, bairro from aluno where cidade = 'Londrina' and bairro IN (select bairro from aluno where matric = 'A31') order by cidade, nome;

select matric, cod_disc, nota_final from aluno_na_disc where nota_final between 6.1 and 8.5 order by nota_final;

select matric, cod_disc, nota_final from aluno_na_disc where nota_final not between 6.1 and 8.5 order by nota_final;

select nome, cidade from aluno where nome like 'A%' order by 1;

select nome, cidade from aluno where nome ilike 'a%' order by 1;

select nome, cidade from aluno where nome ilike 'a%a' order by 1;

select nome, cidade from aluno where nome ilike '%na%' order by 1;

select nome, cidade from aluno where nome like '%A__ton%' order by 1;

