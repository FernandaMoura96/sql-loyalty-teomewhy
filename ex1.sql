-- Liste todas as transações com apenas 1 pt

SELECT IdTransacao , qtdePontos

FROM  transacoes 

WHERE qtdepontos = 1