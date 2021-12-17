# concat () - permite concatenar strings
select concat('O nome do filme é: ', nome) 
	as Filme,
		nome, concat('Filme: ', nome, '- duração')
			as filme_e_nome
			from tblFilme;
  
# concat_ws - permite concatenar, utilizando um separador como padrão
select concat_ws(

	' | ', 
	nome, 
	duracao, 
	dataLancamento,
	valor
    
) as nomeFilmePersonalizado from tblFilme;

# locate() - retorna a posição inicial da palavra chave que foi solicitada
select locate('morte', sinopse) as PosiçãoPalavra from tblfilme;

# replace() - localiza um caracter e substitui por outro, em qualquer parte do texto
select replace(sinopse, 'Disney', '<strong>Disney</strong>') as resultado from tblFilme;

# reverse() - permite inverter a escrita de um conteúdo
select reverse(nome) from tblfilme;

# lenght() - retorna a quantidade de caracteres de um conteúdo
select length(nome) QUANTIDADE, nome from tblfilme;

# char_length() - retorna a quantidade de caracteres de um conteúdo incluindo todo o tipo de caracter
select char_length(sinopse) QUANTIDADE from tblfilme where idFilme = 1;

# insert() - permite inserir alguma uma string dentro do conteúdo

/*

	insert(atributo, posição que será inserida, quantidade de caracter que deve sumir, a palavra)

*/
select insert(sinopse, 1, 0, 'filme ') as insertTeste, nome
	from tblfilme 
		where tblfilme.nome like '%retorno%';
        
# substr() - permite contar um pedaço de string
select substr('animação', 5, 4) resultado;
select concat(substr('superação', 1, 5), '-', substr('superação', 6, 4)) resultado;

/* -- Desafios  -- */
select concat(sinopse, ' Saiba Mais...') 
	as DESAFIO_1 
		from tblfilme;

select insert(sinopse, locate(' ', sinopse), 0, ' <b>(videolocadora Acme)</b> ') 
	as DESAFIO_2 
		from tblfilme;

select insert(sinopse, locate('leão', sinopse), char_length('leão'), '<strong>leão</strong>') 
	as DESAFIO_3 
		from tblfilme;

select insert(sinopse, locate('falecido em 2004', sinopse), 0, 'teste') 
	as DESAFIO_4  
		from tblfilme 
			where tblfilme.idFilme = 5;

select replace(sinopse, 'Marlon Brando', 'Marlon Brando falecido em 2004')
	as DESAFIO_5
		from tblfilme
			where idFilme = 2;
            
select concat(substr(sinopse, 1, 20), '...saiba mais') 
	as DESAFIO_6 
		from tblfilme;