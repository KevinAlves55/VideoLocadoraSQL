select nome, qtde, valor
	from tblfilme;
    
# round() - permite limitar a qdte de casas decimais    
select nome, qtde, valor, 
	concat('R$ ', round((qtde * valor), 2))
		as ValorTotal
			from tblfilme;
            
# Cálculos no mySQL            
select nome, qtde, valor, 
	round((qtde * valor), 2)
		as ValorTotal
			from tblfilme;
            
# Cálculo de porcentagem            
select nome as Nome, concat('R$ ', round(valor, 2)) as Valor, 
	concat('R$ ', round((valor - (valor * 10/100)), 2))
		as Desconto
			from tblfilme; 
            
# avg() - retorna a média de uma coluna de valores
# pow(n, n) - permite calcular a potencia
select concat('Total : ', round(sum(valor), 2)) 
	as SOMA, 
		pow(valor, 5) as Potência, 
			concat('Média dos valores: ', round(avg(valor), 2)) 
				as MÉDIA 
					from tblfilme;
                    
/* -- Operações com data e hora */

# Retornam a data atual do servidor do banco de dados
select curdate() as DataAtual;
select current_date() as DataAtual;

# Retorna a hora atualizada do servidor do banco de dados
select current_time() as HoraAtual;
select current_time() as HoraAtual;

# Retorna a data e hora
select current_timestamp() as DataHoraAtual;

# FORMATAÇÃO DE HORA
/*

	h - hora
    i - minuto
    s - segundo
    r - hora AMPM
    T - Hora formato 24
    

*/
select time_format(current_time(), '%h') as Hora;
select time_format(current_time(), '%i') as Minuto;
select time_format(current_time(), '%s') as Segundo;
select time_format(current_time(), '%r') as HoraAMPM;
select time_format(current_time(), '%T') as Hora24;
select time_format(current_time(), '%H:%i:%s') as DataPersonalizada;

select hour(current_time()) as Hora;
select minute(current_time()) as Minuto;
select second(current_time()) as Segundo;

# Cálculo de diferença entre horas
select timediff('18:00:00', '05:00:00') as CalculoDeHoras;


# FORMATAÇÃO DE DATA
select date_format(curdate(), '%W') as SEMANA;

select date_format('2005-05-08', '%W') as SEMANA;
select date_format('2005-05-08', '%w') as SEMANA;
select date_format('2005-05-08', '%M') as MÊS;
select date_format('2005-05-08', '%m') as MÊS;
select date_format('2005-05-08', '%d') as DIA;
select date_format('2005-05-08', '%D') as DIA;
select date_format('2005-05-08', '%y') as ANO;
select date_format('2005-05-08', '%Y') as ANO;
select date_format('2005-05-08', '%d/%m/%Y') as DataPersonalizada;

select day('2005-05-08') as dia;
select month('2005-05-08') as dia;
select year('2005-05-08') as dia;

select dayofweek('2005-05-08') as ESSA_POHA;
select dayofyear('2005-05-08') as ESSA_BUCETA;
select dayofmonth('2005-05-08') as ESSE_CU;
select weekofyear('2005-05-08') as GRÁVIDA_QUE_DEU_O_CU;
select weekday('2005-05-08') as VIDA_DESGRAÇADA;
select datediff('2005-05-08', curdate()) as IDADE_DE_VIDA;