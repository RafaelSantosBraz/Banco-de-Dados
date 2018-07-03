select idexemplar
from exemplares
where idlivro = (select idlivro
from livros
where titulo = 'Código de Da Vinci');

select titulo
from livros
where idlivro = (select idlivro
from exemplares
where idexemplar = (select idexemplar
from requisicoes
where date_part('month', datarequisicao) = 1 and date_part('year', datarequisicao) = 2004))
order by 1;

