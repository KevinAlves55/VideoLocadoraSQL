# Permite criar um database
create database dbVideoLocadora20212;

# Permite visualizar os databases existentes no Banco de Dados
show databases;

# Permite apagar um database
drop database dbvideolocadora20212;

-- Permite ativar o database que será utilizado
use dbvideolocadora20212;

# Permite criar uma tabela / Tabela de idioma
create table tblIdioma ( 
	idIdioma int not null auto_increment primary key,
    nome varchar(50) not null,
    unique index(idIdioma)
);

# Permite visualizar todas as tabelas existentes no database
show tables;

# Permite visualizar a descrição (estrutura) da tabela
desc tblIdioma;

# Tabela de classificação
create table tblClassificacao ( 
	idClassificacao int not null auto_increment,
    faixaetaria varchar(6) not null,
    primary key (idClassificacao),
    unique index (idClassificacao)
);

# Permite alterar uma coluna
alter table tblClassificacao
	modify column faixaetaria varchar(6) not null;
    
Show tables;

desc tblClassificacao;

create table tblGenero (
	idGenero int not null auto_increment primary key,
    nome varchar(50) not null,
    unique index(idGenero)
);

create table tblSexo (
	idSexo int not null auto_increment primary key,
    nome varchar(15) not null
);

/* Para adicionar uma unique index() */
alter table tblSexo add unique index(idSexo);

create table tblNascionalidade (
	idNascionalidade int not null auto_increment primary key, 
    nome varchar(50) not null,
    unique index(idNascionalidade)
);

create table tblLegenda (
	idLegenda int not null auto_increment primary key, 
    nome varchar(50) not null,
    unique index(idLegenda)
);

show tables;


create table tblFilme (
	idFilme int not null auto_increment primary key,
    nome varchar(80) not null,
    dataLancamento date not null,
    sinopse text not null,
    duracao time not null,
    idClassificacao int not null,
    constraint FK_Classificacao_Filmes
    foreign key(idClassificacao)
    references tblClassificacao (idClassificacao),
    unique index(idFilme)
);

# Alterar uma tabela para apagar uma constrain
alter table tblFilme
	drop foreign key FK_Classificacao_Filme;
    
# Alterar uma tabela para apagar um atributo
alter table tblFilme
	drop column idClassificacao;

/* Alterar uma tabela para adicionar um novo atributo 
e adicionar esse atributo com uma constraint */

alter table tblFilme
	add column idClassificacao int not null,
    add constraint FK_Classificacao_Filme
    foreign key(idClassificacao)
    references tblClassificacao (idClassificacao);

create table tblFilmeIdioma (
	idFilmeIdioma int not null auto_increment primary key,
    idFilme int not null,
    constraint FK_Filme_FilmeIdioma
    foreign key(idFilme)
    references tblFilme (idFilme),
    
    idIdioma int not null,
    constraint FK_Idioma_FilmeIdioma
    foreign key(idIdioma)
    references tblIdioma (idIdioma),
    unique index(idFilmeIdioma)
);

/* Lançar tudo de uma vez: */

create table tblFilmeGenero (
	idFilmeGenero int not null auto_increment primary key,
    
    idFilme int not null,
    constraint FK_Filme_FilmeGenero
    foreign key(idFilme)
    references tblFilme (idFilme),
    
    idGenero int not null,
    constraint FK_Genero_FilmeGenero
    foreign key(idGenero)
    references tblGenero (idGenero),
    
    unique index(idFilmeGenero)
);

create table tblFilmeLegenda (
	idFilmeLegenda int not null auto_increment primary key,
    
    idFilme int not null,
    constraint FK_Filme_FilmeLegenda
    foreign key(idFilme)
    references tblFilme (idFilme),
    
    idLegenda int not null,
    constraint FK_Legenda_FilmeLegenda
    foreign key(idLegenda)
    references tblLegenda (idLegenda),
    
    unique index(idFilmeLegenda)
);

create table tblDiretor (
	idDiretor int not null auto_increment primary key,
    
    nome varchar(80) not null,
    nomeArtistico varchar(80) not null,
    dataNascimento date not null,
    dataFalecimento date not null,
    biografia text,
    
    idSexo int not null,
    constraint FK_Sexo_Diretor
    foreign key(idSexo)
    references tblSexo (idSexo),
    
    unique index(idDiretor)
);

alter table tblDiretor modify column
nomeArtistico varchar(80);

alter table tblDiretor modify column
dataFalecimento varchar(80);

create table tblAtor (
	idAtor int not null auto_increment primary key,
    
    nome varchar(80) not null,
    nomeArtistico varchar(80) not null,
    dataNascimento date not null,
    dataFalecimento date not null,
    biografia text,
    
    idSexo int not null,
    constraint FK_Sexo_Ator
    foreign key(idSexo)
    references tblSexo (idSexo),
    
    unique index(idAtor)
);

alter table tblAtor modify column
nomeArtistico varchar(80);

alter table tblAtor modify column
dataFalecimento varchar(80);

create table tblFilmeDiretor (
	idFilmeDiretor int not null auto_increment primary key,
    
    idFilme int not null,
    constraint FK_Filme_FilmeDiretor
    foreign key(idFilme)
    references tblFilme (idFilme),
    
    idDiretor int not null,
    constraint FK_Diretor_FilmeDiretor
    foreign key(idDiretor)
    references tblDiretor (idDiretor),
    
    unique index(idFilmeDiretor)
);

create table tblFilmeAtor (
	idFilmeAtor int not null auto_increment primary key,
    
    idFilme int not null,
    constraint FK_Filme_FilmeAtor
    foreign key(idFilme)
    references tblFilme (idFilme),
    
    idAtor int not null,
    constraint FK_Ator_FilmeAtor
    foreign key(idAtor)
    references tblAtor(idAtor),
    
    unique index(idFilmeAtor)
);

create table tblDiretorNascionalidade (
	idDiretorNascionalidade int not null auto_increment primary key,
    
    idNascionalidade int not null,
    idDiretor int not null,
    
    constraint FK_Nascionalidade_DiretorNascionalidade
    foreign key(idNascionalidade)
    references tblNascionalidade (idNascionalidade),
    
    constraint FK_Diretor_DiretorNascionalidade
    foreign key(idDiretor)
    references tblDiretor (idDiretor),
    
    unique index(idDiretorNascionalidade)
);

create table tblAtorNascionalidade (
	idAtorNascionalidade int not null auto_increment primary key,
    
    idNascionalidade int not null,
    constraint FK_Nascionalidade_AtorNascionalidade
    foreign key(idNascionalidade)
    references tblNascionalidade (idNascionalidade),
    
    idAtor int not null,
    constraint FK_Ator_AtorNascionalidade
    foreign key(idAtor)
    references tblAtor(idAtor),
    
    unique index(idAtorNascionalidade)
);

show tables;

desc tblNascionalidade;

desc tblDiretor;

insert into tblGenero (nome)
  values('Animação'),
		('Aventura'),
		('Musical'),
		('Drama'),
        ('Policial'),
        ('Romance'),
        ('Comédia'),
        ('Fantasia'),
        ('Ação'),
        ('Ficção científica');
        
insert into tblClassificacao (faixaetaria)
  values('Livre'),
		('+10'),
		('+12'),
		('+14'),
        ('+16'),
        ('+18');

insert into tblIdioma (nome)
values('Português'),
	  ('Inglês'),
      ('Espanhol'),
      ('Italiano'),
      ('Japonês'),
      ('Mandarim');
      
insert into tblLegenda (nome)
values('PT'),
	  ('EN'),
      ('ES'),
      ('JA');
      
insert into tblSexo (nome)
values('Masculino'),
	  ('Feminino');
      
insert into tblDiretor (nome, nomeArtistico, dataNascimento, dataFalecimento, biografia, idSexo)
values 

(
	'Francis Ford Coppola', 
    null, 
    '1939-04-07', 
    null, 
    '- Em 1969, fundou juntamente com George Lucas a produtora American Zoetrope, em São Francisco, tendo como primeiro projeto o filme THX 1138 (1970);- É tio do ator Nicolas Cage;- Pai da tambem diretora Sofia Coppola;- Foi assistente de direção de Roger Corman;- Graduado na Universidade da Califórnia (UCLA), a mesma dos diretores, George Lucas e Steven Spielberg', 
    1
),
    
(
    'Frank Darabont',
    'Ardeth Bey',
    '1959-01-28',
    null,
    '- É o autor dos roteiros de "A Hora do Pesadelo 3", "A Mosca 2" e "Frankenstein de Mary Shelley".- Trabalhou como roteirista na série de TV norte-americana "O Jovem Indiana Jones".',
    1
),

(
	'Roger Allers',
    null,
    '1949-06-29',
    null,
    'Nascido em Rye, Nova York, mas criado em Scottsdale, Arizona, Allers se tornou um fã de animação aos cinco anos de idade, depois de ver Peter Pan da Disney. Decidir o que ele queria buscar uma carreira na Disney e até mesmo trabalhar ao lado de Walt Disney, alguns anos mais tarde, ele foi enviado para a Disneylândia para um  kit de animação.[1] No entanto, Allers, até então um estudante do ensino médio, cresceu desanimado sobre a realização de seu sonho quando ele soube da morte de Walt Disney, em 1966.[2]',
    1
),

(
	'Rob Minkoff',
    null,
    '1962-06-11',
    null,
    'Robert R. "Rob" Minkoff é um cineasta americano. Ele é conhecido por dirigir o o famoso filme da Disney, O Rei Leão.',
    1
),

(
	'Robert Zemeckis',
    null,
    '1952-05-14',
    null,
    '- Especialista em efeitos especiais, Robert Zemeckis é um dos partidários dos filmes do também diretor Steven Spielberg, que já produziu vários de seus filmes; - Trabalhando geralmente com seu parceiro de roteiros Bob Gale, os primeiros filmes de Robert apresentou ao público seu talento para comédias tipo pastelão, como Tudo por uma Esmeralda (1984); 1941 - Uma Guerra Muito Louca (1979) e, acrescentando efeitos muito especiais em Uma Cilada para Roger Rabbit (1988) e De Volta para o Futuro (1985); - Apesar destes filmes terem sidos feitos meramente para o puro entretenimento, com raros desenvolvimentos dos personagens ou mesmo com uma trama cuidadosa, eles são diversão na certa; - Seus filmes posteriores no entanto, se tornaram mais sérios e reflexivos, como o enormemente bem sucedido filme estrelado por Tom Hanks Forrest Gump (1994) e o filme estrelado por Jodie Foster.',
    1
),

(
	'Peter Robert Jackson',
    null,
    '1961-10-31',
    null,
    '- Fez os modelos de látex de "Trash - Náusea Total" no fogão da cozinha de sua mãe, forçando por diversas vezes sua família a comer salsichas no jantar devido a impossibilidade de utilizar o fogão da casa.',
    1
),

(
	'Joseph Vincent Russo',
    'Joe Russo',
    '1971-07-08',
    null,
    'Anthony Russo (nascido em 3 de fevereiro de 1970) e Joseph Russo (nascido em 18 de julho de 1971), conhecidos coletivamente como os irmãos Russo (ROO-so), são diretores americanos, produtores, roteiristas e atores.Eles dirigem a maior parte de seu trabalho juntos.Eles são mais conhecidos por dirigirem quatro filmes no Universo Cinemático Marvel: Captain America: The Winter Soldier (2014), Captain America: Civil War (2016), Avengers: Infinity War (2018), e Avengers: Endgame (2019). Endgame ganhou mais de 2,798 bilhões de dólares em todo o mundo',
    1
);

insert into tblAtor (nome, nomeArtistico, dataNascimento, dataFalecimento, biografia, idSexo)
values 
(
	'Marlon Brando',
    null,
    '1924-04-03',
    '2004-07-01',
    '- Trabalhou como ascensorista de elevador em uma loja por 4 dias, antes de se tornar famoso.- Possui uma ilha particular no oceano Pacífico, na Polinésia, desde 1966.- O Oscar que ganhou por "Sindicato dos Ladrões" foi roubado de sua casa, com o ator tendo solicitado à Academia de Artes e Ciências Cinematográficas a reposição da estatueta, em 1970.- Recusou o Oscar recebido por "O Poderoso Chefão", em protesto pelo modo como os Estados Unidos e, especialmente, Hollywood vinham discriminando os índios nativos do país. Brando não compareceu à cerimônia de entrega do Oscar e enviou em seu lugar a atriz Sacheen Littlefeather, que subiu ao palco para receber a estatueta do ator como se fosse uma índia verdadeira, divulgando seu protesto.- Em determinado momento das filmagens de "A Cartada Final", se recusava a estar no mesmo set que o diretor Frank Oz.- Possui uma estrela na',
    1
),

(
	'James Caan',
    null,
    '1939-03-26',
    null,
    '- Conquistou a faixa preta de caratê quando jovem;- Possui uma estrela na Calçada da Fama, localizada em 6648 Hollywood Boulevard;- Pai do tambem ator Scott Caan.',
    1
),

(
	'Timothy Francis Robbins',
    'Tim Robbins',
    '1958-10-16',
    null,
    'Timothy Francis "Tim" Robbins, é um ator, roteirista, produtor, cineasta e músico norte-americano, vencedor do Óscar de Melhor Ator Coadjuvante pela sua atuação em Mystic River, de Clint Eastwood.',
    1
), 

(
	'Morgan Freeman',
    null,
    '1937-06-01',
    null,
    '- Possui uma estrela na Calçada da Fama, localizada em 7021 Hollywood Boulevard.',
    1
), 

(
	'Mauro Ramos',
    null,
    '1961-02-13',
    null,
    'Mauro Ramos é um ator, dublador, diretor de dublagem, locutor, redator, cantor e narrador brasileiro.',
    1
), 

(
	'Garcia Júnior',
    null,
    '1967-03-02',
    null,
    'Manoel Garcia Júnior é um ator, dublador, radialista, tradutor e diretor de dublagem brasileiro. Manoel é filho dos também dubladores Garcia Neto e Dolores Machado.',
    1
), 

(
	'Robin Virginia Gayle Wright',
	'Robin Wright',
    '1966-04-08',
    null,
    'Robin Wright nasceu em Dallas, Texas, filha de Gayle Gaston, uma vendedora de cosméticos, e Freddie Wright, funcionário de uma empresa farmacêutica. A atriz ficou famosa por seus papeis em House of Cards, Mulher-Maravilha, Corpo Fechado e Forrest Gump - O Contador de Histórias.Wright foi criada em San Diego, Califórnia. Quando jovem, frequentou a La Jolla High School, em La Jolla, e a Taft High School em Woodland Hills, em Los Angeles.A atriz começou sua carreira como modelo quando tinha 14 anos. Aos 18, interpretou Kelly Capwell na novela Santa Barbara (1984), da NBC Daytime, recebendo diversas indicações ao Daytime Emmy e voltando os olhos do público para seu trabalho.Das telas da TV para o cinema, Wright conseguiu um papel em Hollywood Vice Squad (1986) e protagonizou uma princesa em A Princesa Prometida, em 1987. Alguns anos mais tarde, a atriz foi aclamada pela crítica em.',
    2
), 

(
	'Tom Hanks',
    null,
    '1956-07-09',
    null,
    'Tom Hanks iniciou a carreira no cinema aos 24 anos, com um papel no filme de baixo orçamento Trilha de Corpos. Logo migrou para a TV, onde estrelou por dois anos a série Bosom Buddies. Nela passou a trabalhar com comédia, algo com o qual não estava habituado, rendendo convites para pequenas participações nas séries Táxi, Caras & Caretas e Happy Days.Em 1984, veio seu primeiro sucesso no cinema: a comédia Splash - Uma Sereia em Minha Vida, na qual era dirigido por Ron Howard e contracenava com Daryl Hannah. Em seguida vieram várias comédias, entre elas A Última Festa de Solteiro (1984), Um Dia a Casa Cai (1986) e Dragnet - Desafiando o Perigo (1987), tornando-o conhecido do grande público.Com Quero Ser Grande (1988) Hanks obteve sua primeira indicação ao Oscar de melhor ator. Apesar de consagrado como comediante, aos poucos passou a experimentar outros gêneros. Em 1993.',
    1
), 

(
	'Sean Astin',
    null,
    '1971-02-25',
    null,
    '- É formado na Universidade de Los Angeles em História.',
    1
), 

(
	'Elijah Wood',
    null,
    '1981-01-28',
    null,
    'Elijah Jordan Wood é um ator, dublador, produtor e DJ norte-americano. Sua carreira cinematográfica começou aos oito anos de idade, quando estreou nos cinemas com um pequeno papel de De volta para o Futuro II.',
    1
), 

(
	'Robert John Downey Jr',
	'Robert Downey Jr',
    '1935-04-04',
    null,
    'Do céu ao inferno e ao céu novamente. Se alguém pensou no mito do pássaro fênix que renasce das cinzas, até que a comparação poderia se encaixar para definir este brilhante ator que já deu vida para personagens tão distantes em tempo e estilo, como Charles Chaplin (Chaplin - 1992) e Tony Stark (Homem de Ferro - 2008).Na ativa por mais de quatro décadas e dono de uma voz grave, afinada, Downey já dublou desenho animado (God, the Devil and Bob - 2000), se aventurou no mundo da música, em 2004, com o disco The Futurist (Sony) e fez bonito na televisão, onde faturou o Globo de Ouro, além de outros prêmios e indicações por Larry Paul, personagem do seriado Ally McBeal (2000 - 2002). Mas é no cinema que sua estrela parece brilhar mais intensamente.',
    1
), 

(
	'Chris Evans',
    null,
    '1981-06-13',
    null,
    'Chris Evans começou sua carreira principalmente em séries de televisão, como The Fugitive (2000-2001), e em pequenos filmes adolescentes, como o terror Medo em Cherry Falls (2000), a comédia Não é Mais um Besteirol Americano (2001) e a aventura Nota Máxima (2004). Ele começa a ter mais destaque apenas em 2004, com Celular - Um Grito de Socorro, que tem uma resposta razoável do público, e principalmente Quarteto Fantástico (2005), que mostra o potencial do ator em produções de grande orçamento. Com algumas raras comédias no currículo (Qual Seu Número? em 2011), ele privilegia as produções fantásticas e com super-heróis, como Heróis (2009) e Scott Pilgrim Contra o Mundo (2010), conquistando o estrelato como Capitão América em Capitão América: O Primeiro Vingador (2011) e Os Vingadores - The Avengers (2012).',
    1
), 

(
	'David Morse',
    null,
    '1953-10-11',
    null,
    'David Morse é um ator norte-americano.',
    1
), 

(
	'Diane Keaton',
    null,
    '1946-01-05',
    null,
    'Atriz de poderoso chefão 2',
    2
), 

(
	'Al Pacino',
    null,
    '1940-04-25',
    null,
    '- É um grande fã de ópera;- É um dos poucos astros de Hollywood que nunca casou;- Foi preso em janeiro de 1961, acusado de carregar consigo uma arma escondida;- Recusou o personagem Han Solo, da trilogia original de "Star Wars";- Foi o primeiro na história do Oscar a ser indicado no mesmo ano nas categorias de melhor ator e melhor ator coadjuvante.',
    1
), 

(
	'Lea Thompson',
    null,
    '1961-05-31',
    null,
    'Atriz de, de volta para o futuro',
    2
), 

(
	'Michael Andrew Fox',
    null,
    '1961-06-09',
    null,
    '- Fez parte do elenco das séries da TV americana "Spin City" e "Caras & Caretas".- Possui uma estrela na Calçada da Fama, localizada em 7021 Hollywood Boulevard.',
    1
), 

(
	'Christopher Lloyd',
    null,
    '1938-10-22',
    null,
    'Christopher Allen Lloyd é um ator, dublador e comediante estadunidense. Lloyd tem um grande histórico em filmes e em dublagem, e é especialmente conhecido pelo papel do Doutor Emmett Brown na trilogia Back to the Future.',
    1
);
        
select * from tblClassificacao;
select * from tblGenero;
select nome from tblFilme;
select * from tblidioma;
select * from tblLegenda;
select * from tblSexo;
select * from tblDiretor;
select * from tblAtor;
select * from tblFilmeDiretor;
select * from tblFilmeAtor;
select * from tblNascionalidade;
select * from tblDiretorNascionalidade;

insert into tblFilme(
	
    nome,
    dataLancamento,
    duracao,
    sinopse,
    idClassificacao

)values (
	
    'De Volta Para o Futuro',
    '1985-12-25',
    '01:56:00',
    'Um jovem (Michael J. Fox) aciona acidentalmente uma máquina do tempo construída por um cientista (Christopher Lloyd) em um Delorean, retornando aos anos 50. Lá conhece sua mãe (Lea Thompson), antes ainda do casamento com seu pai, que fica apaixonada por ele. Tal paixão põe em risco sua própria existência, pois alteraria todo o futuro, forçando-o a servir de cupido entre seus pais.',
    3
);

show tables;

/******************* - Inserts para genero - ************************/

insert into tblFilmeGenero (idFilme, idGenero)
values (1, 1),
	   (1, 2),
       (1, 3);
       
insert into tblFilmeGenero (idFilme, idGenero)
values (2, 4),
	   (2, 5);
       
insert into tblFilmeGenero (idFilme, idGenero)
values (3, 4);
       
insert into tblFilmeGenero (idFilme, idGenero)
values (4, 6),
	   (4, 4),
       (4, 7);
       
insert into tblFilmeGenero (idFilme, idGenero)
values (5, 8),
	   (5, 2);
       
insert into tblFilmeGenero (idFilme, idGenero)
values (6, 9),
	   (6, 8),
       (6, 2);
       
insert into tblFilmeGenero (idFilme, idGenero)
values (7, 8),
	   (7, 5);
       
insert into tblFilmeGenero (idFilme, idGenero)
values (8, 4),
	   (8, 5);
       
insert into tblFilmeGenero (idFilme, idGenero)
values (9, 2),
	   (9, 10);
       
/******************* - Inserts para idioma - ************************/

insert into tblFilmeIdioma (idFilme, idIdioma)
values (1, 1),
	   (1, 2),
       (1, 3);
       
insert into tblFilmeIdioma (idFilme, idIdioma)
values (2, 1),
	   (2, 2),
       (2, 3),
       (2, 6);
       
insert into tblFilmeIdioma (idFilme, idIdioma)
values (3, 1),
	   (3, 2),
       (3, 3),
       (3, 4);
   
insert into tblFilmeIdioma (idFilme, idIdioma)
values (4, 1),
	   (4, 2),
       (4, 3),
       (4, 4);

insert into tblFilmeIdioma (idFilme, idIdioma)
values (5, 1),
	   (5, 2),
       (5, 3),
       (5, 4),
       (5, 4);
       
insert into tblFilmeIdioma (idFilme, idIdioma)
values (6, 1),
	   (6, 2),
       (6, 3);
       
insert into tblFilmeIdioma (idFilme, idIdioma)
values (7, 1),
	   (7, 2),
       (7, 3);
       
insert into tblFilmeIdioma (idFilme, idIdioma)
values (8, 1),
	   (8, 2),
       (8, 3);
       
insert into tblFilmeIdioma (idFilme, idIdioma)
values (9, 1),
	   (9, 2),
       (9, 3);         

/******************* - Inserts para legenda - ************************/

insert into tblFilmeLegenda (idFilme, idLegenda)
values (1, 1),
       (1, 2),
       (1, 3);

insert into tblFilmeLegenda (idFilme, idLegenda)
values (2, 1),
       (2, 2),
       (2, 3);
       
insert into tblFilmeLegenda (idFilme, idLegenda)
values (3, 1),
       (3, 2),
       (3, 3);
       
insert into tblFilmeLegenda (idFilme, idLegenda)
values (4, 1),
       (4, 2),
       (4, 3);
       
insert into tblFilmeLegenda (idFilme, idLegenda)
values (5, 1),
       (5, 2),
       (5, 3);
       
insert into tblFilmeLegenda (idFilme, idLegenda)
values (6, 1),
       (6, 2),
       (6, 3);
       
insert into tblFilmeLegenda (idFilme, idLegenda)
values (7, 1),
       (7, 2),
       (7, 3);
       
insert into tblFilmeLegenda (idFilme, idLegenda)
values (8, 1),
       (8, 2),
       (8, 3);
       
insert into tblFilmeLegenda (idFilme, idLegenda)
values (9, 1),
       (9, 2),
       (9, 3);
       
/******************* - Insert para Diretor e Filme - ************************/  

insert into tblFilmeDiretor (idFilme, idDiretor)
values (1, 1);

insert into tblFilmeDiretor (idFilme, idDiretor)
values (2, 2);

insert into tblFilmeDiretor (idFilme, idDiretor)
values (1, 1);

insert into tblFilmeDiretor (idFilme, idDiretor)
values (3, 3),
	   (3, 4);

insert into tblFilmeDiretor (idFilme, idDiretor)
values (4, 5);

insert into tblFilmeDiretor (idFilme, idDiretor)
values (5, 6);

insert into tblFilmeDiretor (idFilme, idDiretor)
values (6, 7);

insert into tblFilmeDiretor (idFilme, idDiretor)
values (7, 2);

insert into tblFilmeDiretor (idFilme, idDiretor)
values (8, 1);

insert into tblFilmeDiretor (idFilme, idDiretor)
values (9, 5);

/******************* - Insert para Ator e Filme - ************************/
	
insert into tblFilmeAtor (idFilme, idAtor)
values (1, 1),
       (1, 2),
       (2, 3),
       (2, 4),
       (3, 5),
       (3, 6),
       (4, 7),
       (4, 8),
       (5, 9),
       (5, 10),
       (6, 11),
       (6, 12),
       (7, 8),
       (7, 13),
       (8, 14),
       (8, 15),
       (9, 16),
       (9, 17),
       (9, 18);
       
/******************* - Insert para Nascionalidade - ************************/

insert into tblNascionalidade (nome)
values ('Americano'),
       ('Brasileiro');

insert into tblNascionalidade (nome)
values ('Neo-zelandês');
       
/******************* - Insert para Nascionalidade de Diretor - ************************/

insert into tblDiretorNascionalidade (idDiretor, idNascionalidade)
values (1, 1),
       (2, 1),
       (2, 3),
       (3, 1),
       (4, 1),
       (5, 1),
       (6, 4),
       (7, 1);
       
select tblNascionalidade.nome as Nascionalidade, tblDiretor.nome as Nome from tblDiretorNascionalidade as DN
inner join tblNascionalidade on tblNascionalidade.idNascionalidade = DN.idNascionalidade
inner join tblDiretor on tblDiretor.idDiretor = DN.idDiretor;