use dbvideolocadora20212;

select 
	tblfilme.nome as NomeFilme, 
    tblfilme.sinopse,
    tblGenero.nome as Genero,
	tblClassificacao.faixaetaria, 
    tblator.nome as NomeAtor, 
    tbldiretor.nome as NomeDiretor 
from tblfilme
    inner join tblClassificacao
        on tblClassificacao.idClassificacao = tblfilme.idClassificacao
    inner join tblFilmeGenero
        on tblfilme.idFilme = tblFilmeGenero.idFilme
    inner join tblGenero
        on tblGenero.idGenero = tblFilmeGenero.idGenero
    inner join tblFilmeAtor
        on tblFilme.idFilme = tblFilmeAtor.idFilme
    inner join tblAtor
        on tblAtor.idAtor = tblFilmeAtor.idAtor
    inner join tblFilmeDiretor
        on tblFilme.idFilme = tblFilmeDiretor.idFilme
    inner join tblDiretor
        on tblDiretor.idDiretor = tblFilmeDiretor.idDiretor
group by tblfilme.nome;


select * from tblClassificacao;
select * from tblGenero;
select * from tblFilmeGenero;
select * from tblFilme;
select * from tblidioma;
select * from tblLegenda;
select * from tblSexo;
select * from tblDiretor;
select * from tblAtor;
select * from tblFilmeDiretor;
select * from tblFilmeAtor;
select * from tblNascionalidade;
select * from tblDiretorNascionalidade;

select 
	tblfilme.nome as NomeFilme,
    tblfilme.dataLancamento as Data,
    tblfilme.sinopse,
    tblGenero.nome as Genero,
	tblClassificacao.faixaetaria, 
    tblator.nome as NomeAtor, 
    tbldiretor.nome as NomeDiretor 
from tblfilme
    inner join tblClassificacao
        on tblClassificacao.idClassificacao = tblfilme.idClassificacao
    inner join tblFilmeGenero
        on tblfilme.idFilme = tblFilmeGenero.idFilme
    inner join tblGenero
        on tblGenero.idGenero = tblFilmeGenero.idGenero
    inner join tblFilmeAtor
        on tblFilme.idFilme = tblFilmeAtor.idFilme
    inner join tblAtor
        on tblAtor.idAtor = tblFilmeAtor.idAtor
    inner join tblFilmeDiretor
        on tblFilme.idFilme = tblFilmeDiretor.idFilme
    inner join tblDiretor
        on tblDiretor.idDiretor = tblFilmeDiretor.idDiretor
where year(tblfilme.dataLancamento) >= '1995'
	group by tblfilme.nome 
order by tblfilme.dataLancamento;

CREATE VIEW vwListarFilmes as
select 
    tblfilme.nome as NomeFilme,
    tblfilme.dataLancamento as Data,
    tblfilme.sinopse as Sinopse,
    tblGenero.nome as Genero,
    tblClassificacao.faixaetaria as ClassificaçãoIdade, 
    tblator.nome as NomeAtor, 
    tbldiretor.nome as NomeDiretor 

    from tblfilme
        
inner join tblClassificacao
    on tblClassificacao.idClassificacao = tblfilme.idClassificacao
inner join tblFilmeGenero
    on tblfilme.idFilme = tblFilmeGenero.idFilme
inner join tblGenero
    on tblGenero.idGenero = tblFilmeGenero.idGenero
inner join tblFilmeAtor
    on tblFilme.idFilme = tblFilmeAtor.idFilme
inner join tblAtor
    on tblAtor.idAtor = tblFilmeAtor.idAtor
inner join tblFilmeDiretor
    on tblFilme.idFilme = tblFilmeDiretor.idFilme
inner join tblDiretor
    on tblDiretor.idDiretor = tblFilmeDiretor.idDiretor

where year(tblfilme.dataLancamento) >= '1995'
group by tblfilme.nome 
order by tblfilme.dataLancamento;

select * from vwListarFilmes;