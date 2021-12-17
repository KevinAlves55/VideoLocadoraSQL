/* -- Trabalhando com o Inner Join -- */

select * from tblfilmegenero;

select tblfilme.nome as NomeFilme, tblclassificacao.faixaetaria as Classificação 
	from tblfilme
		inner join tblclassificacao
			on tblclassificacao.idClassificacao = tblfilme.idClassificacao;
            
            
/* -- RELACIONAMENTO ENTRE TABELAS -- */

## FORMA 1 - RELACIONAMENTO PELO WHERE

select tblfilme.nome as NomeFilme, tblfilme.dataLancamento as Lançamento, 
tblgenero.nome as Genero, tblclassificacao.faixaetaria as Classificação
	
from tblFilme, tblgenero, 
tblclassificacao, tblfilmeGenero

where tblfilme.idFilme = tblfilmeGenero.idFilme and 
tblgenero.idGenero = tblfilmeGenero.idGenero and
tblclassificacao.idClassificacao = tblfilme.idClassificacao;

## FORMA 2 - RELACIONAMENTO PELO FROM

/* 
	left join
    
    Faz a relação entre duas tabelas, trazendo os dados apenas que existirem
    na tabela da esquerda e que houver relação com a tabela da direita, além de
    trazer os dados da tabela da esquerda que não se relacionam com dados da direita
    
*/

/* 
	inner join 
    
    Faz a relação entre duas tabelas, trazendo os dados apenas que existirem 
    na tabela da esquerda e que houver relaçao com a tabela da direita
*/

/* 

	right join
    
    Faz a relação entre duas tabelas, trazendo os dados que existirem na tabela da esquerda
    e que houver relação com a tabela da direita, além de trazer os dados da tabela da direita
    que não se se relacionam com os dados da esquerda

*/

-- Inner join
select tblFilme.nome as NomeFilme, tblFilme.dataLancamento as Lançamento,
tblGenero.nome as Genero, tblClassificacao.faixaetaria as Classificação

from tblFilme inner join tblFilmeGenero
		on tblFilme.idFilme = tblFilmeGenero.idFilme
	inner join tblGenero
		on tblGenero.idGenero = tblFilmeGenero.idGenero
	inner join tblClassificacao
		on tblClassificacao.idClassificacao = tblFilme.idClassificacao;
        
-- left join

select tblFilme.nome as NomeFilme, tblGenero.nome as Genero
	from tblFilme
		left join tblFilmeGenero	
			on tblFilme.idFilme = tblFilmeGenero.idFilme
		left join tblGenero	
			on tblGenero.idGenero = tblFilmeGenero.idGenero;
            
-- right join

select tblFilme.nome as NomeFilme, tblGenero.nome as Genero
	from tblFilme
		right join tblFilmeGenero	
			on tblFilme.idFilme = tblFilmeGenero.idFilme
		right join tblGenero	
			on tblGenero.idGenero = tblFilmeGenero.idGenero;
            
-- full join

select tblFilme.nome as NomeFilme, tblGenero.nome as Genero
	from tblFilme
		full outer join tblFilmeGenero	
			on tblFilme.idFilme = tblFilmeGenero.idFilme
		full outer join tblGenero	
			on tblGenero.idGenero = tblFilmeGenero.idGenero;