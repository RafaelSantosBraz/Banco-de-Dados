-- Produto Cartesiano entre tabelas
select a.nome, ad.nota_final from aluno a, aluno_na_disc ad;

-- Select com join (igualdade de chaves primária e estrangeira)
select a.nome, ad.nota_final, ad.cod_disc from aluno a, aluno_na_disc ad
where a.matric = ad.matric
order by a.nome;

-- Select com join entre 3 tabelas (igualdade de chaves)
select a.nome, ad.nota_final, d.descricao from aluno a, aluno_na_disc ad, disciplina d
where a.matric = ad.matric and 
	d.cod_disc = ad.cod_disc and 
	a.sexo = 'M' and 
	ad.nota_final between 6.8 and 7.9
order by a.nome;
