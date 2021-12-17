use dbvideolocadora20212;

-- PROCEDURES

select 
    
    tblfilme.nome as NomeFilme, tblfilme.sinopse,
    tblgenero.nome as NomeGenero, tblclassificacao.faixaetaria

from tblfilme

    inner join tblFilmeGenero
    on tblfilme.idfilme = tblFilmeGenero.idfilme
    
    inner join tblgenero
    on tblgenero.idGenero = tblFilmeGenero.idGenero
    
    inner join tblclassificacao
    on tblclassificacao.idClassificacao = tblfilme.idClassificacao

where tblgenero.idGenero = 2;

/*

    IN - utilizado quando a procedure irá apenas receber argumentos
    OUT - utilizado quando a procedure irá apenas retornar um valor
    INOUT - utilizado quando a procedure irá receber argumentos e receber valores

*/

-- Criando um procedures
DELIMITER $$
CREATE PROCEDURE procListarFilmes (IN idGenero INTEGER)

BEGIN

	if idGenero > 0 then

		select 

			tblfilme.nome as NomeFilme, tblfilme.sinopse,
			tblgenero.nome as NomeGenero, tblclassificacao.faixaetaria

		from tblfilme

			inner join tblFilmeGenero
			on tblfilme.idfilme = tblFilmeGenero.idfilme
			
			inner join tblgenero
			on tblgenero.idGenero = tblFilmeGenero.idGenero
			
			inner join tblclassificacao
			on tblclassificacao.idClassificacao = tblfilme.idClassificacao

		where tblgenero.idGenero = idGenero;
	
    elseif idGenero = 0 then
    
		select 

			tblfilme.nome as NomeFilme, tblfilme.sinopse,
			tblgenero.nome as NomeGenero, tblclassificacao.faixaetaria

		from tblfilme

			inner join tblFilmeGenero
			on tblfilme.idfilme = tblFilmeGenero.idfilme
			
			inner join tblgenero
			on tblgenero.idGenero = tblFilmeGenero.idGenero
			
			inner join tblclassificacao
			on tblclassificacao.idClassificacao = tblfilme.idClassificacao;
    
    end if;

END $$

CALL procListar(0);

drop procedure procListar;

# EX 2

drop procedure procListar;

DELIMITER $$

create procedure procListar (IN idGenero int)

BEGIN
    
    set @scriptPadrao = '
		select 

			tblfilme.nome as NomeFilme, tblfilme.sinopse,
			tblgenero.nome as NomeGenero, tblclassificacao.faixaetaria

		from tblfilme

			inner join tblFilmeGenero
			on tblfilme.idfilme = tblFilmeGenero.idfilme
			
			inner join tblgenero
			on tblgenero.idGenero = tblFilmeGenero.idGenero
			
			inner join tblclassificacao
			on tblclassificacao.idClassificacao = tblfilme.idClassificacao';
            
	if idGenero > 0 then
	set @script = concat(@scriptPadrao, ' where tblgenero.idGenero =', idGenero);
        
	elseif idGenero = 0 then
		set @script = @scriptPadrao;
	end if;
    
    /* Tranforma o que uma variável em um comando executado */
    prepare scriptSQL from @script;
    execute scriptSQL;

END $$

call procListar(2);