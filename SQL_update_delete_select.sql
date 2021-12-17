select * from tblfilme;

/* --- Comando de update --- */
update tblFilme set idClassificacao = 6
where idFilme = 8;

/* --- Comando de delete --- */
delete from tblFilme
where dataLancamento < year(1980);

/* --- Comandos de select --- */

# MUITO IMPOTANTE

/* 
	O select é dividido em 3 partes

	select - (coloca-se os campos que serão exibidos no filtro)
    from - (coloca-se as tabelas que serão utilizadas no filtro. OBS: podem ser 1 ou mais tabelas)
	where - (coloca-se o critério de busca que será aplicada na consulta)
*/

# Permite listar TODOS* os campos e todos os regitros da tabela
select * from tblfilme;

# Permite especificar atributos
select nome, sinopse from tblfilme;

# Boa prática (SEMPRE FAZER DESSE JEITO)
select tblfilme.nome, tblfilme.sinopse from tblfilme;

# Colocando nome na tabela para trazer todos os campos
select tblfilme.* from tblfilme;

# Cria uma coluna virtual com o nome de escolha, para isso use o 'as'(PERMITE criar um nome virtual a uma coluna)
select nome as nomeFilme, sinopse, duracao from tblfilme;

# Select com where(MODO SIMPLES)
select * from tblfilme where nome = 'O rei leão';

/*

	like - funciona como se fosse o igual
    like %exemplo - Localiza todos os itens que termina com aquela palavra
    like exemplo% - Localiza todos os itens que comecam com aquela palavra
    like %exemplo% - localiza todos os itens que tem a palavra em qualquer parte do campo
    
*/

# select com o uso do like para localizar filtros espesificos 
select * from tblfilme where (nome like '%rei%' or sinopse like '%rei%') and dataLancamento > '1980-01-01';

/*
	
    Operadores de comparação
    
    = - Igual
    like - Filtro de palavras
    < - Menor que
    > - Maior que
    <= - Menor ou igual
    >= - Maior ou igual
    <> - Diferente

*/

/*

	Operadores lógicos
    
    OR - 3º
    AND - 2º
    NOT - 1º
    () - 0º

*/

# Podemos separar com vígurla para adicionar tudo que queremos de uma vez só
alter table tblFilme 
	add column qtde int, 
	add column valor float;
    
select * from tblFilme;

# Atuzalizando os dados na tabela filme para quantidade e valor
update tblFilme set qtde = 5, valor = '5.00' where idFilme = 1;
update tblFilme set qtde = 25, valor = '10.00' where idFilme = 2;
update tblFilme set qtde = 25, valor = '15.00' where idFilme = 3;
update tblFilme set qtde = 20, valor = '25.50' where idFilme = 4;
update tblFilme set qtde = 35, valor = '25.00' where idFilme = 5;
update tblFilme set qtde = 8, valor = '7.00' where idFilme = 6;
update tblFilme set qtde = 10, valor = '7.00' where idFilme = 7;
update tblFilme set qtde = 16, valor = '12.00' where idFilme = 8;
update tblFilme set qtde = 4, valor = '12.00' where idFilme = 9;

# select com atributos especificos e utilizando o where para fazer uma filtragem

# not - encare como a inversão de saída
select tblFilme.nome, tblFilme.sinopse, 
	tblFilme.qtde, tblFilme.valor 
		from tblFilme 
			where qtde >= 5 and sinopse not like '%rei%';
            
# Desafio 1
select * from tblFilme 
	where (
		qtde = 1 or 
		qtde = 5 or 
		qtde = 6 or 
		qtde = 10
	) and nome like '%rei%';

# Desafio 1 (Menor do que o meu usando o in)
# in () - permite fazer uma busca de varios valores substituindo a utilização do or
# not in () - inverte o resultado da busca
select nome, qtde from tblFilme
	where qtde not in (1,5,6,7) and
		nome like '%rei%';
                
# order by atributo asc - permite ordenar de forma crescente
# order by atributo asc - permite ordenar de forma decrescente                
select * from tblFilme where duracao >= '03:00:00' order by idFilme asc, valor asc;


# limit - permite limitar a quantidade de itens do resultado do select
select nome from tblFilme order by idFilme asc limit 5;

# count() - permite contar a quantidade de itens, levando como referência apenas os valores que não sejam nulos
select count(*) as quantidadeFilmes from tblFilme;
select count(*) as QuantidadeDeAtor from tblAtor;
select count(nome), count(nomeArtistico) from tblAtor;

# min() - retorna o menor valor de uma coluna
# max() - retorna o maior valor de uma coluna
select min(qtde) as quantidadeMinima, nome from tblFilme;
select max(valor) as FilmeMaisCaro, nome from tblFilme;

#sum
select sum(qtde) as total from tblFilme where sinopse like '%rei%';

# substring_index() - permite contar um conteudo, tendo como base a localização por caracter e quantidade de oconrrênc
select substring_index(sinopse, ' ', 6) as Resultado from tblFilme;