CREATE DATABASE  IF NOT EXISTS `dbvideolocadora20212` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `dbvideolocadora20212`;
-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: dbvideolocadora20212
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tblator`
--

DROP TABLE IF EXISTS `tblator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblator` (
  `idAtor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `nomeArtistico` varchar(80) DEFAULT NULL,
  `dataNascimento` date NOT NULL,
  `dataFalecimento` varchar(80) DEFAULT NULL,
  `biografia` text,
  `idSexo` int(11) NOT NULL,
  PRIMARY KEY (`idAtor`),
  UNIQUE KEY `idAtor` (`idAtor`),
  KEY `FK_Sexo_Ator` (`idSexo`),
  CONSTRAINT `FK_Sexo_Ator` FOREIGN KEY (`idSexo`) REFERENCES `tblsexo` (`idsexo`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblator`
--

LOCK TABLES `tblator` WRITE;
/*!40000 ALTER TABLE `tblator` DISABLE KEYS */;
INSERT INTO `tblator` VALUES (1,'Marlon Brando',NULL,'1924-04-03','2004-07-01','- Trabalhou como ascensorista de elevador em uma loja por 4 dias, antes de se tornar famoso.- Possui uma ilha particular no oceano Pacífico, na Polinésia, desde 1966.- O Oscar que ganhou por \"Sindicato dos Ladrões\" foi roubado de sua casa, com o ator tendo solicitado à Academia de Artes e Ciências Cinematográficas a reposição da estatueta, em 1970.- Recusou o Oscar recebido por \"O Poderoso Chefão\", em protesto pelo modo como os Estados Unidos e, especialmente, Hollywood vinham discriminando os índios nativos do país. Brando não compareceu à cerimônia de entrega do Oscar e enviou em seu lugar a atriz Sacheen Littlefeather, que subiu ao palco para receber a estatueta do ator como se fosse uma índia verdadeira, divulgando seu protesto.- Em determinado momento das filmagens de \"A Cartada Final\", se recusava a estar no mesmo set que o diretor Frank Oz.- Possui uma estrela na',1),(2,'James Caan',NULL,'1939-03-26',NULL,'- Conquistou a faixa preta de caratê quando jovem;- Possui uma estrela na Calçada da Fama, localizada em 6648 Hollywood Boulevard;- Pai do tambem ator Scott Caan.',1),(3,'Timothy Francis Robbins','Tim Robbins','1958-10-16',NULL,'Timothy Francis \"Tim\" Robbins, é um ator, roteirista, produtor, cineasta e músico norte-americano, vencedor do Óscar de Melhor Ator Coadjuvante pela sua atuação em Mystic River, de Clint Eastwood.',1),(4,'Morgan Freeman',NULL,'1937-06-01',NULL,'- Possui uma estrela na Calçada da Fama, localizada em 7021 Hollywood Boulevard.',1),(5,'Mauro Ramos',NULL,'1961-02-13',NULL,'Mauro Ramos é um ator, dublador, diretor de dublagem, locutor, redator, cantor e narrador brasileiro.',1),(6,'Garcia Júnior',NULL,'1967-03-02',NULL,'Manoel Garcia Júnior é um ator, dublador, radialista, tradutor e diretor de dublagem brasileiro. Manoel é filho dos também dubladores Garcia Neto e Dolores Machado.',1),(7,'Robin Virginia Gayle Wright','Robin Wright','1966-04-08',NULL,'Robin Wright nasceu em Dallas, Texas, filha de Gayle Gaston, uma vendedora de cosméticos, e Freddie Wright, funcionário de uma empresa farmacêutica. A atriz ficou famosa por seus papeis em House of Cards, Mulher-Maravilha, Corpo Fechado e Forrest Gump - O Contador de Histórias.Wright foi criada em San Diego, Califórnia. Quando jovem, frequentou a La Jolla High School, em La Jolla, e a Taft High School em Woodland Hills, em Los Angeles.A atriz começou sua carreira como modelo quando tinha 14 anos. Aos 18, interpretou Kelly Capwell na novela Santa Barbara (1984), da NBC Daytime, recebendo diversas indicações ao Daytime Emmy e voltando os olhos do público para seu trabalho.Das telas da TV para o cinema, Wright conseguiu um papel em Hollywood Vice Squad (1986) e protagonizou uma princesa em A Princesa Prometida, em 1987. Alguns anos mais tarde, a atriz foi aclamada pela crítica em.',2),(8,'Tom Hanks',NULL,'1956-07-09',NULL,'Tom Hanks iniciou a carreira no cinema aos 24 anos, com um papel no filme de baixo orçamento Trilha de Corpos. Logo migrou para a TV, onde estrelou por dois anos a série Bosom Buddies. Nela passou a trabalhar com comédia, algo com o qual não estava habituado, rendendo convites para pequenas participações nas séries Táxi, Caras & Caretas e Happy Days.Em 1984, veio seu primeiro sucesso no cinema: a comédia Splash - Uma Sereia em Minha Vida, na qual era dirigido por Ron Howard e contracenava com Daryl Hannah. Em seguida vieram várias comédias, entre elas A Última Festa de Solteiro (1984), Um Dia a Casa Cai (1986) e Dragnet - Desafiando o Perigo (1987), tornando-o conhecido do grande público.Com Quero Ser Grande (1988) Hanks obteve sua primeira indicação ao Oscar de melhor ator. Apesar de consagrado como comediante, aos poucos passou a experimentar outros gêneros. Em 1993.',1),(9,'Sean Astin',NULL,'1971-02-25',NULL,'- É formado na Universidade de Los Angeles em História.',1),(10,'Elijah Wood',NULL,'1981-01-28',NULL,'Elijah Jordan Wood é um ator, dublador, produtor e DJ norte-americano. Sua carreira cinematográfica começou aos oito anos de idade, quando estreou nos cinemas com um pequeno papel de De volta para o Futuro II.',1),(11,'Robert John Downey Jr','Robert Downey Jr','1935-04-04',NULL,'Do céu ao inferno e ao céu novamente. Se alguém pensou no mito do pássaro fênix que renasce das cinzas, até que a comparação poderia se encaixar para definir este brilhante ator que já deu vida para personagens tão distantes em tempo e estilo, como Charles Chaplin (Chaplin - 1992) e Tony Stark (Homem de Ferro - 2008).Na ativa por mais de quatro décadas e dono de uma voz grave, afinada, Downey já dublou desenho animado (God, the Devil and Bob - 2000), se aventurou no mundo da música, em 2004, com o disco The Futurist (Sony) e fez bonito na televisão, onde faturou o Globo de Ouro, além de outros prêmios e indicações por Larry Paul, personagem do seriado Ally McBeal (2000 - 2002). Mas é no cinema que sua estrela parece brilhar mais intensamente.',1),(12,'Chris Evans',NULL,'1981-06-13',NULL,'Chris Evans começou sua carreira principalmente em séries de televisão, como The Fugitive (2000-2001), e em pequenos filmes adolescentes, como o terror Medo em Cherry Falls (2000), a comédia Não é Mais um Besteirol Americano (2001) e a aventura Nota Máxima (2004). Ele começa a ter mais destaque apenas em 2004, com Celular - Um Grito de Socorro, que tem uma resposta razoável do público, e principalmente Quarteto Fantástico (2005), que mostra o potencial do ator em produções de grande orçamento. Com algumas raras comédias no currículo (Qual Seu Número? em 2011), ele privilegia as produções fantásticas e com super-heróis, como Heróis (2009) e Scott Pilgrim Contra o Mundo (2010), conquistando o estrelato como Capitão América em Capitão América: O Primeiro Vingador (2011) e Os Vingadores - The Avengers (2012).',1),(13,'David Morse',NULL,'1953-10-11',NULL,'David Morse é um ator norte-americano.',1),(14,'Diane Keaton',NULL,'1946-01-05',NULL,'Atriz de poderoso chefão 2',2),(15,'Al Pacino',NULL,'1940-04-25',NULL,'- É um grande fã de ópera;- É um dos poucos astros de Hollywood que nunca casou;- Foi preso em janeiro de 1961, acusado de carregar consigo uma arma escondida;- Recusou o personagem Han Solo, da trilogia original de \"Star Wars\";- Foi o primeiro na história do Oscar a ser indicado no mesmo ano nas categorias de melhor ator e melhor ator coadjuvante.',1),(16,'Lea Thompson',NULL,'1961-05-31',NULL,'Atriz de, de volta para o futuro',2),(17,'Michael Andrew Fox',NULL,'1961-06-09',NULL,'- Fez parte do elenco das séries da TV americana \"Spin City\" e \"Caras & Caretas\".- Possui uma estrela na Calçada da Fama, localizada em 7021 Hollywood Boulevard.',1),(18,'Christopher Lloyd',NULL,'1938-10-22',NULL,'Christopher Allen Lloyd é um ator, dublador e comediante estadunidense. Lloyd tem um grande histórico em filmes e em dublagem, e é especialmente conhecido pelo papel do Doutor Emmett Brown na trilogia Back to the Future.',1);
/*!40000 ALTER TABLE `tblator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblatornascionalidade`
--

DROP TABLE IF EXISTS `tblatornascionalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblatornascionalidade` (
  `idAtorNascionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `idNascionalidade` int(11) NOT NULL,
  `idAtor` int(11) NOT NULL,
  PRIMARY KEY (`idAtorNascionalidade`),
  UNIQUE KEY `idAtorNascionalidade` (`idAtorNascionalidade`),
  KEY `FK_Nascionalidade_AtorNascionalidade` (`idNascionalidade`),
  KEY `FK_Ator_AtorNascionalidade` (`idAtor`),
  CONSTRAINT `FK_Ator_AtorNascionalidade` FOREIGN KEY (`idAtor`) REFERENCES `tblator` (`idator`),
  CONSTRAINT `FK_Nascionalidade_AtorNascionalidade` FOREIGN KEY (`idNascionalidade`) REFERENCES `tblnascionalidade` (`idnascionalidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblatornascionalidade`
--

LOCK TABLES `tblatornascionalidade` WRITE;
/*!40000 ALTER TABLE `tblatornascionalidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblatornascionalidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblclassificacao`
--

DROP TABLE IF EXISTS `tblclassificacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblclassificacao` (
  `idClassificacao` int(11) NOT NULL AUTO_INCREMENT,
  `faixaetaria` varchar(6) NOT NULL,
  PRIMARY KEY (`idClassificacao`),
  UNIQUE KEY `idClassificacao` (`idClassificacao`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblclassificacao`
--

LOCK TABLES `tblclassificacao` WRITE;
/*!40000 ALTER TABLE `tblclassificacao` DISABLE KEYS */;
INSERT INTO `tblclassificacao` VALUES (1,'Livre'),(2,'+10'),(3,'+12'),(4,'+14'),(5,'+16'),(6,'+18');
/*!40000 ALTER TABLE `tblclassificacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldiretor`
--

DROP TABLE IF EXISTS `tbldiretor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbldiretor` (
  `idDiretor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `nomeArtistico` varchar(80) DEFAULT NULL,
  `dataNascimento` date NOT NULL,
  `dataFalecimento` varchar(80) DEFAULT NULL,
  `biografia` text,
  `idSexo` int(11) NOT NULL,
  PRIMARY KEY (`idDiretor`),
  UNIQUE KEY `idDiretor` (`idDiretor`),
  KEY `FK_Sexo_Diretor` (`idSexo`),
  CONSTRAINT `FK_Sexo_Diretor` FOREIGN KEY (`idSexo`) REFERENCES `tblsexo` (`idsexo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldiretor`
--

LOCK TABLES `tbldiretor` WRITE;
/*!40000 ALTER TABLE `tbldiretor` DISABLE KEYS */;
INSERT INTO `tbldiretor` VALUES (1,'Francis Ford Coppola',NULL,'1939-04-07',NULL,'- Em 1969, fundou juntamente com George Lucas a produtora American Zoetrope, em São Francisco, tendo como primeiro projeto o filme THX 1138 (1970);- É tio do ator Nicolas Cage;- Pai da tambem diretora Sofia Coppola;- Foi assistente de direção de Roger Corman;- Graduado na Universidade da Califórnia (UCLA), a mesma dos diretores, George Lucas e Steven Spielberg',1),(2,'Frank Darabont','Ardeth Bey','1959-01-28',NULL,'- É o autor dos roteiros de \"A Hora do Pesadelo 3\", \"A Mosca 2\" e \"Frankenstein de Mary Shelley\".- Trabalhou como roteirista na série de TV norte-americana \"O Jovem Indiana Jones\".',1),(3,'Roger Allers',NULL,'1949-06-29',NULL,'Nascido em Rye, Nova York, mas criado em Scottsdale, Arizona, Allers se tornou um fã de animação aos cinco anos de idade, depois de ver Peter Pan da Disney. Decidir o que ele queria buscar uma carreira na Disney e até mesmo trabalhar ao lado de Walt Disney, alguns anos mais tarde, ele foi enviado para a Disneylândia para um  kit de animação.[1] No entanto, Allers, até então um estudante do ensino médio, cresceu desanimado sobre a realização de seu sonho quando ele soube da morte de Walt Disney, em 1966.[2]',1),(4,'Rob Minkoff',NULL,'1962-06-11',NULL,'Robert R. \"Rob\" Minkoff é um cineasta americano. Ele é conhecido por dirigir o o famoso filme da Disney, O Rei Leão.',1),(5,'Robert Zemeckis',NULL,'1952-05-14',NULL,'- Especialista em efeitos especiais, Robert Zemeckis é um dos partidários dos filmes do também diretor Steven Spielberg, que já produziu vários de seus filmes; - Trabalhando geralmente com seu parceiro de roteiros Bob Gale, os primeiros filmes de Robert apresentou ao público seu talento para comédias tipo pastelão, como Tudo por uma Esmeralda (1984); 1941 - Uma Guerra Muito Louca (1979) e, acrescentando efeitos muito especiais em Uma Cilada para Roger Rabbit (1988) e De Volta para o Futuro (1985); - Apesar destes filmes terem sidos feitos meramente para o puro entretenimento, com raros desenvolvimentos dos personagens ou mesmo com uma trama cuidadosa, eles são diversão na certa; - Seus filmes posteriores no entanto, se tornaram mais sérios e reflexivos, como o enormemente bem sucedido filme estrelado por Tom Hanks Forrest Gump (1994) e o filme estrelado por Jodie Foster.',1),(6,'Peter Robert Jackson',NULL,'1961-10-31',NULL,'- Fez os modelos de látex de \"Trash - Náusea Total\" no fogão da cozinha de sua mãe, forçando por diversas vezes sua família a comer salsichas no jantar devido a impossibilidade de utilizar o fogão da casa.',1),(7,'Joseph Vincent Russo','Joe Russo','1971-07-08',NULL,'Anthony Russo (nascido em 3 de fevereiro de 1970) e Joseph Russo (nascido em 18 de julho de 1971), conhecidos coletivamente como os irmãos Russo (ROO-so), são diretores americanos, produtores, roteiristas e atores.Eles dirigem a maior parte de seu trabalho juntos.Eles são mais conhecidos por dirigirem quatro filmes no Universo Cinemático Marvel: Captain America: The Winter Soldier (2014), Captain America: Civil War (2016), Avengers: Infinity War (2018), e Avengers: Endgame (2019). Endgame ganhou mais de 2,798 bilhões de dólares em todo o mundo',1);
/*!40000 ALTER TABLE `tbldiretor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldiretornascionalidade`
--

DROP TABLE IF EXISTS `tbldiretornascionalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbldiretornascionalidade` (
  `idDiretorNascionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `idNascionalidade` int(11) NOT NULL,
  `idDiretor` int(11) NOT NULL,
  PRIMARY KEY (`idDiretorNascionalidade`),
  UNIQUE KEY `idDiretorNascionalidade` (`idDiretorNascionalidade`),
  KEY `FK_Nascionalidade_DiretorNascionalidade` (`idNascionalidade`),
  KEY `FK_Diretor_DiretorNascionalidade` (`idDiretor`),
  CONSTRAINT `FK_Diretor_DiretorNascionalidade` FOREIGN KEY (`idDiretor`) REFERENCES `tbldiretor` (`iddiretor`),
  CONSTRAINT `FK_Nascionalidade_DiretorNascionalidade` FOREIGN KEY (`idNascionalidade`) REFERENCES `tblnascionalidade` (`idnascionalidade`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldiretornascionalidade`
--

LOCK TABLES `tbldiretornascionalidade` WRITE;
/*!40000 ALTER TABLE `tbldiretornascionalidade` DISABLE KEYS */;
INSERT INTO `tbldiretornascionalidade` VALUES (1,1,1),(2,1,2),(3,3,2),(4,1,3),(5,1,4),(6,1,5),(7,4,6),(8,1,7);
/*!40000 ALTER TABLE `tbldiretornascionalidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfilme`
--

DROP TABLE IF EXISTS `tblfilme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblfilme` (
  `idFilme` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `dataLancamento` date NOT NULL,
  `sinopse` text NOT NULL,
  `duracao` time NOT NULL,
  `idClassificacao` int(11) NOT NULL,
  `qtde` int(11) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  PRIMARY KEY (`idFilme`),
  UNIQUE KEY `idFilme` (`idFilme`),
  KEY `FK_Classificacao_Filmes` (`idClassificacao`),
  CONSTRAINT `FK_Classificacao_Filmes` FOREIGN KEY (`idClassificacao`) REFERENCES `tblclassificacao` (`idclassificacao`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfilme`
--

LOCK TABLES `tblfilme` WRITE;
/*!40000 ALTER TABLE `tblfilme` DISABLE KEYS */;
INSERT INTO `tblfilme` VALUES (1,'O rei leão','1994-07-08','Clássico da Disney, a animação acompanha Mufasa \n    (voz de James Earl Jones), o Rei Leão, e a rainha Sarabi \n    (voz de Madge Sinclair), apresentando ao reino o herdeiro do trono, \n    Simba (voz de Matthew Broderick). O recém-nascido recebe a bênção do \n    sábio babuíno Rafiki (voz de Robert Guillaume), mas ao crescer é envolvido \n    nas artimanhas de seu tio Scar (voz de Jeremy Irons), o invejoso e \n    maquiavélico irmão de Mufasa, que planeja livrar-se do \n    sobrinho e herdar o trono.','01:29:00',1,5,5),(2,'O Poderoso Chefão','1972-03-24','Don Vito Corleone (Marlon Brando) é o chefe de uma \n    \"família\" de Nova York que está feliz, pois Connie (Talia Shire), sua filha, \n    se casou com Carlo (Gianni Russo). Porém, durante a festa, \n    Bonasera (Salvatore Corsitto) é visto no escritório de Don Corleone pedindo \n    \"justiça\", vingança na verdade contra membros de uma quadrilha, que espancaram \n    barbaramente sua filha por ela ter se recusado a fazer sexo para preservar a honra. \n    Vito discute, mas os argumentos de Bonasera o sensibilizam e ele promete que os homens, \n    que maltrataram a filha de Bonasera não serão mortos, pois ela também não foi, mas serão \n    severamente castigados. Vito porém deixa claro que ele pode chamar Bonasera algum dia \n    para devolver o \"favor\". Do lado de fora, no meio da festa, está o terceiro filho de Vito, \n    Michael (Al Pacino), um capitão da marinha muito decorado que há pouco voltou da \n    2ª Guerra Mundial. Universitário educado, sensível e perceptivo, ele quase não é \n    notado pela maioria dos presentes, com exceção de uma namorada da faculdade, \n    Kay Adams (Diane Keaton), que não tem descendência italiana mas que ele ama. \n    Em contrapartida há alguém que é bem notado, Johnny Fontane (Al Martino), \n    um cantor de baladas românticas que provoca gritos entre as jovens que beiram a histeria. \n    Don Corleone já o tinha ajudado, quando Johnny ainda estava em começo de carreira e estava \n    preso por um contrato com o líder de uma grande banda, mas a carreira de Johnny deslanchou e \n    ele queria fazer uma carreira solo. Por ser seu padrinho Vito foi procurar o líder da banda e \n    ofereceu 10 mil dólares para deixar Johnny sair, mas teve o pedido recusado. Assim, no dia \n    seguinte Vito voltou acompanhado por Luca Brasi (Lenny Montana), um capanga, e após uma hora \n    ele assinou a liberação por apenas mil dólares, mas havia um detalhe: nas \"negociações\" \n    Luca colocou uma arma na cabeça do líder da banda. Agora, no meio da alegria da festa, \n    Johnny quer falar algo sério com Vito, pois precisa conseguir o principal papel em um filme \n    para levantar sua carreira, mas o chefe do estúdio, Jack Woltz (John Marley), nem pensa em \n    contratá-lo. Nervoso, Johnny começa a chorar e Vito, irritado, o esbofeteia, mas promete que \n    ele conseguirá o almejado papel. Enquanto a festa continua acontecendo, Don Corleone comunica \n    a Tom Hagen (Robert Duvall), seu filho adotivo que atua como conselheiro, que Carlo terá um \n    emprego mas nada muito importante, e que os \"negócios\" não devem ser discutidos na sua frente. \n    Os verdadeiros problemas começam para Vito quando Sollozzo (Al Lettieri), um gângster que \n    tem apoio de uma família rival, encabeçada por Phillip Tattaglia (Victor Rendina) e seu filho \n    Bruno (Tony Giorgio). Sollozzo, em uma reunião com Vito, Sonny e outros, conta para a família \n    que ele pretende estabelecer um grande esquema de vendas de narcóticos em Nova York, mas exige \n    permissão e proteção política de Vito para agir. Don Corleone odeia esta idéia, \n    pois está satisfeito em operar com jogo, mulheres e proteção, mas isto será apenas a \n    ponta do iceberg de uma mortal luta entre as \"famílias\".','02:55:00',5,25,10),(3,'Um Sonho de Liberdade','1995-01-25','Em 1946, Andy Dufresne (Tim Robbins), um jovem e bem sucedido banqueiro, tem a sua vida radicalmente modificada ao ser condenado por um crime que nunca cometeu, o homicídio de sua esposa e do amante dela. Ele é mandado para uma prisão que é o pesadelo de qualquer detento, a Penitenciária Estadual de Shawshank, no Maine. Lá ele irá cumprir a pena perpétua. Andy logo será apresentado a Warden Norton (Bob Gunton), o corrupto e cruel agente penitenciário, que usa a Bíblia como arma de controle e ao Capitão Byron Hadley (Clancy Brown) que trata os internos como animais. Andy faz amizade com Ellis Boyd Redding (Morgan Freeman), um prisioneiro que cumpre pena há 20 anos e controla o mercado negro da instituição.','02:20:00',4,25,15),(4,'Forrest Gump - O Contador de Histórias','1994-12-07','Quarenta anos da história dos Estados Unidos, vistos pelos olhos de Forrest Gump (Tom Hanks), um rapaz com QI abaixo da média e boas intenções. Por obra do acaso, ele consegue participar de momentos cruciais, como a Guerra do Vietnã e Watergate, mas continua pensando no seu amor de infância, Jenny Curran.','02:20:00',4,20,25.5),(5,'O Senhor dos Anéis - O Retorno do Rei','2003-12-25','Sauron planeja um grande ataque a Minas Tirith, capital de Gondor, o que faz com que Gandalf (Ian McKellen) e Pippin (Billy Boyd) partam para o local na intenção de ajudar a resistência. Um exército é reunido por Theoden (Bernard Hill) em Rohan, em mais uma tentativa de deter as forças de Sauron. Enquanto isso Frodo (Elijah Wood), Sam (Sean Astin) e Gollum (Andy Serkins) seguem sua viagem rumo à Montanha da Perdição, para destruir o Um Anel.','03:21:00',3,35,25),(6,'VINGADORES: ULTIMATO','2019-04-25','Em Vingadores: Ultimato, após Thanos eliminar metade das criaturas vivas em Vingadores: Guerra Infinita, os heróis precisam lidar com a dor da perda de amigos e seus entes queridos. Com Tony Stark (Robert Downey Jr.) vagando perdido no espaço sem água nem comida, o Capitão América/Steve Rogers (Chris Evans) e a Viúva Negra/Natasha Romanov (Scarlett Johansson) precisam liderar a resistência contra o titã louco.','03:01:00',4,8,7),(7,'À Espera De Um Milagre','2000-03-10','1935, no corredor da morte de uma prisão sulista. Paul Edgecomb (Tom Hanks) é o chefe de guarda da prisão, que temJohn Coffey (Michael Clarke Duncan) como um de seus prisioneiros. Aos poucos, desenvolve-se entre eles uma relação incomum, baseada na descoberta de que o prisioneiro possui um dom mágico que é, ao mesmo tempo, misterioso e milagroso.','03:09:00',4,10,7),(8,'O Poderoso Chefão 2','1974-12-20','Início do século XX. Após a máfia local matar sua família, o jovem Vito (Robert De Niro) foge da sua cidade na Sicília e vai para a América. Já adulto em Little Italy, Vito luta para ganhar a vida (legal ou ilegalmente) e manter sua esposa e filhos. Ele mata Black Hand Fanucci (Gastone Moschin), que exigia dos comerciantes uma parte dos seus ganhos. Com a morte de Fanucci, o poderio de Vito cresce muito, mas sua família é o que mais importa para ele. Um legado de família que vai até os enormes negócios que nos anos 50 são controlados pelo caçula, Michael Corleone (Al Pacino). Agora baseado em Lago Tahoe, Michael planeja fazer incursões em Las Vegas e Havana instalando negócios ligados ao lazer, mas descobre que aliados como Hyman Roth (Lee Strasberg) estão tentando matá-lo. Crescentemente paranoico, Michael também descobre que sua ambição acabou com seu casamento com Kay (Diane Keaton) e até mesmo seu irmão Fredo (John Cazale) o traiu. Escapando de uma acusação federal, Michael concentra sua atenção para lidar com os seus inimigos.','03:20:00',6,16,12),(9,'De Volta Para o Futuro','1985-12-25','Um jovem (Michael J. Fox) aciona acidentalmente uma máquina do tempo construída por um cientista (Christopher Lloyd) em um Delorean, retornando aos anos 50. Lá conhece sua mãe (Lea Thompson), antes ainda do casamento com seu pai, que fica apaixonada por ele. Tal paixão põe em risco sua própria existência, pois alteraria todo o futuro, forçando-o a servir de cupido entre seus pais.','01:56:00',3,4,12);
/*!40000 ALTER TABLE `tblfilme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfilmeator`
--

DROP TABLE IF EXISTS `tblfilmeator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblfilmeator` (
  `idFilmeAtor` int(11) NOT NULL AUTO_INCREMENT,
  `idFilme` int(11) NOT NULL,
  `idAtor` int(11) NOT NULL,
  PRIMARY KEY (`idFilmeAtor`),
  UNIQUE KEY `idFilmeAtor` (`idFilmeAtor`),
  KEY `FK_Filme_FilmeAtor` (`idFilme`),
  KEY `FK_Ator_FilmeAtor` (`idAtor`),
  CONSTRAINT `FK_Ator_FilmeAtor` FOREIGN KEY (`idAtor`) REFERENCES `tblator` (`idator`),
  CONSTRAINT `FK_Filme_FilmeAtor` FOREIGN KEY (`idFilme`) REFERENCES `tblfilme` (`idfilme`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfilmeator`
--

LOCK TABLES `tblfilmeator` WRITE;
/*!40000 ALTER TABLE `tblfilmeator` DISABLE KEYS */;
INSERT INTO `tblfilmeator` VALUES (1,1,1),(2,1,2),(3,2,3),(4,2,4),(5,3,5),(6,3,6),(7,4,7),(8,4,8),(9,5,9),(10,5,10),(11,6,11),(12,6,12),(13,7,8),(14,7,13),(15,8,14),(16,8,15),(17,9,16),(18,9,17),(19,9,18);
/*!40000 ALTER TABLE `tblfilmeator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfilmediretor`
--

DROP TABLE IF EXISTS `tblfilmediretor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblfilmediretor` (
  `idFilmeDiretor` int(11) NOT NULL AUTO_INCREMENT,
  `idFilme` int(11) NOT NULL,
  `idDiretor` int(11) NOT NULL,
  PRIMARY KEY (`idFilmeDiretor`),
  UNIQUE KEY `idFilmeDiretor` (`idFilmeDiretor`),
  KEY `FK_Filme_FilmeDiretor` (`idFilme`),
  KEY `FK_Diretor_FilmeDiretor` (`idDiretor`),
  CONSTRAINT `FK_Diretor_FilmeDiretor` FOREIGN KEY (`idDiretor`) REFERENCES `tbldiretor` (`iddiretor`),
  CONSTRAINT `FK_Filme_FilmeDiretor` FOREIGN KEY (`idFilme`) REFERENCES `tblfilme` (`idfilme`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfilmediretor`
--

LOCK TABLES `tblfilmediretor` WRITE;
/*!40000 ALTER TABLE `tblfilmediretor` DISABLE KEYS */;
INSERT INTO `tblfilmediretor` VALUES (1,1,1),(2,1,1),(3,2,2),(4,1,1),(5,3,3),(6,3,4),(7,4,5),(8,5,6),(9,6,7),(10,7,2),(11,8,1),(12,9,5);
/*!40000 ALTER TABLE `tblfilmediretor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfilmegenero`
--

DROP TABLE IF EXISTS `tblfilmegenero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblfilmegenero` (
  `idFilmeGenero` int(11) NOT NULL AUTO_INCREMENT,
  `idFilme` int(11) NOT NULL,
  `idGenero` int(11) NOT NULL,
  PRIMARY KEY (`idFilmeGenero`),
  UNIQUE KEY `idFilmeGenero` (`idFilmeGenero`),
  KEY `FK_Filme_FilmeGenero` (`idFilme`),
  KEY `FK_Genero_FilmeGenero` (`idGenero`),
  CONSTRAINT `FK_Filme_FilmeGenero` FOREIGN KEY (`idFilme`) REFERENCES `tblfilme` (`idfilme`),
  CONSTRAINT `FK_Genero_FilmeGenero` FOREIGN KEY (`idGenero`) REFERENCES `tblgenero` (`idgenero`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfilmegenero`
--

LOCK TABLES `tblfilmegenero` WRITE;
/*!40000 ALTER TABLE `tblfilmegenero` DISABLE KEYS */;
INSERT INTO `tblfilmegenero` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,4),(5,2,5),(6,3,4),(7,4,6),(8,4,4),(9,4,7),(10,5,8),(11,5,2),(12,6,9),(13,6,8),(14,6,2),(15,7,8),(16,7,5),(17,8,4),(18,8,5),(19,9,2),(20,9,10);
/*!40000 ALTER TABLE `tblfilmegenero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfilmeidioma`
--

DROP TABLE IF EXISTS `tblfilmeidioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblfilmeidioma` (
  `idFilmeIdioma` int(11) NOT NULL AUTO_INCREMENT,
  `idFilme` int(11) NOT NULL,
  `idIdioma` int(11) NOT NULL,
  PRIMARY KEY (`idFilmeIdioma`),
  UNIQUE KEY `idFilmeIdioma` (`idFilmeIdioma`),
  KEY `FK_Filme_FilmeIdioma` (`idFilme`),
  KEY `FK_Idioma_FilmeIdioma` (`idIdioma`),
  CONSTRAINT `FK_Filme_FilmeIdioma` FOREIGN KEY (`idFilme`) REFERENCES `tblfilme` (`idfilme`),
  CONSTRAINT `FK_Idioma_FilmeIdioma` FOREIGN KEY (`idIdioma`) REFERENCES `tblidioma` (`ididioma`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfilmeidioma`
--

LOCK TABLES `tblfilmeidioma` WRITE;
/*!40000 ALTER TABLE `tblfilmeidioma` DISABLE KEYS */;
INSERT INTO `tblfilmeidioma` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,3),(7,2,6),(8,3,1),(9,3,2),(10,3,3),(11,3,4),(12,5,1),(13,5,2),(14,5,3),(15,5,4),(16,5,4),(17,6,1),(18,6,2),(19,6,3),(20,7,1),(21,7,2),(22,7,3),(23,8,1),(24,8,2),(25,8,3),(26,9,1),(27,9,2),(28,9,3);
/*!40000 ALTER TABLE `tblfilmeidioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfilmelegenda`
--

DROP TABLE IF EXISTS `tblfilmelegenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblfilmelegenda` (
  `idFilmeLegenda` int(11) NOT NULL AUTO_INCREMENT,
  `idFilme` int(11) NOT NULL,
  `idLegenda` int(11) NOT NULL,
  PRIMARY KEY (`idFilmeLegenda`),
  UNIQUE KEY `idFilmeLegenda` (`idFilmeLegenda`),
  KEY `FK_Filme_FilmeLegenda` (`idFilme`),
  KEY `FK_Legenda_FilmeLegenda` (`idLegenda`),
  CONSTRAINT `FK_Filme_FilmeLegenda` FOREIGN KEY (`idFilme`) REFERENCES `tblfilme` (`idfilme`),
  CONSTRAINT `FK_Legenda_FilmeLegenda` FOREIGN KEY (`idLegenda`) REFERENCES `tbllegenda` (`idlegenda`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfilmelegenda`
--

LOCK TABLES `tblfilmelegenda` WRITE;
/*!40000 ALTER TABLE `tblfilmelegenda` DISABLE KEYS */;
INSERT INTO `tblfilmelegenda` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,3),(7,3,1),(8,3,2),(9,3,3),(10,4,1),(11,4,2),(12,4,3),(13,5,1),(14,5,2),(15,5,3),(16,6,1),(17,6,2),(18,6,3),(19,7,1),(20,7,2),(21,7,3),(22,8,1),(23,8,2),(24,8,3),(25,9,1),(26,9,2),(27,9,3);
/*!40000 ALTER TABLE `tblfilmelegenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblgenero`
--

DROP TABLE IF EXISTS `tblgenero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblgenero` (
  `idGenero` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`idGenero`),
  UNIQUE KEY `idGenero` (`idGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblgenero`
--

LOCK TABLES `tblgenero` WRITE;
/*!40000 ALTER TABLE `tblgenero` DISABLE KEYS */;
INSERT INTO `tblgenero` VALUES (1,'Animação'),(2,'Aventura'),(3,'Musical'),(4,'Drama'),(5,'Policial'),(6,'Romance'),(7,'Comédia'),(8,'Fantasia'),(9,'Ação'),(10,'Ficção científica');
/*!40000 ALTER TABLE `tblgenero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblidioma`
--

DROP TABLE IF EXISTS `tblidioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblidioma` (
  `idIdioma` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`idIdioma`),
  UNIQUE KEY `idIdioma` (`idIdioma`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblidioma`
--

LOCK TABLES `tblidioma` WRITE;
/*!40000 ALTER TABLE `tblidioma` DISABLE KEYS */;
INSERT INTO `tblidioma` VALUES (1,'Português'),(2,'Inglês'),(3,'Espanhol'),(4,'Italiano'),(5,'Japonês'),(6,'Mandarim');
/*!40000 ALTER TABLE `tblidioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbllegenda`
--

DROP TABLE IF EXISTS `tbllegenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbllegenda` (
  `idLegenda` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`idLegenda`),
  UNIQUE KEY `idLegenda` (`idLegenda`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbllegenda`
--

LOCK TABLES `tbllegenda` WRITE;
/*!40000 ALTER TABLE `tbllegenda` DISABLE KEYS */;
INSERT INTO `tbllegenda` VALUES (1,'PT'),(2,'EN'),(3,'ES'),(4,'JA');
/*!40000 ALTER TABLE `tbllegenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblnascionalidade`
--

DROP TABLE IF EXISTS `tblnascionalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblnascionalidade` (
  `idNascionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`idNascionalidade`),
  UNIQUE KEY `idNascionalidade` (`idNascionalidade`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnascionalidade`
--

LOCK TABLES `tblnascionalidade` WRITE;
/*!40000 ALTER TABLE `tblnascionalidade` DISABLE KEYS */;
INSERT INTO `tblnascionalidade` VALUES (1,'Americano'),(2,'Brasileiro'),(3,'Francês'),(4,'Neo-zelandês');
/*!40000 ALTER TABLE `tblnascionalidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsexo`
--

DROP TABLE IF EXISTS `tblsexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblsexo` (
  `idSexo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(15) NOT NULL,
  PRIMARY KEY (`idSexo`),
  UNIQUE KEY `idSexo` (`idSexo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsexo`
--

LOCK TABLES `tblsexo` WRITE;
/*!40000 ALTER TABLE `tblsexo` DISABLE KEYS */;
INSERT INTO `tblsexo` VALUES (1,'Masculino'),(2,'Feminino');
/*!40000 ALTER TABLE `tblsexo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-10 14:22:48
