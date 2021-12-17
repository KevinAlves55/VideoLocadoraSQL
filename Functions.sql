/* TRABALHANDO COM FUNÇÕES */


-- deterministic - é utilizado quando o tipo de dado de retorno da função é o mesmo tipo da entrada, caso aja algum argumento
-- Ou é utilizado quando a função não tem argumento de entrada, apenas de saída

-- not deterministic é utilizado quando o tipo de dado de retorno da função será diferente do tipo de dados do argumento de entrada

-- delimiter - Permite especificar qual será o caracter ou simbolo que será utilizado para fechamento da função
DELIMITER $$

CREATE FUNCTION loadMessage2 ()
    
    RETURNS CHAR(25) 
    DETERMINISTIC

    BEGIN

        -- Criar a lógica de funçaõ --

        DECLARE horaAtual TIME;
        DECLARE hora CHAR(2);
        DECLARE mensagem CHAR(25);

        SET horaAtual = '01:02:00';
        SET hora = HOUR(horaAtual);

        IF hora < 12 AND hora >= 5 THEN
            SET mensagem = 'Bom dia';
        ELSEIF hora >= 12 AND hora <= 18 THEN
            SET mensagem = 'Boa tarde';
        ELSEIF hora >= 19 and hora <= 23 THEN
            SET mensagem = 'Boa noite';
        ELSE
            SET mensagem = 'Vai dormir filho da puta';
        END IF;

        return mensagem;

    END $$
    
select loadMessage() as mensagem;
select loadMessage2() as mensagem2;





