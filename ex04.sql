--clientes que tenham entre 100 e 200 ptos, incluindo ambos
SELECT idCliente, qtdepontos

FROM transacoes 

WHERE qtdePontos > 99 AND qtdePontos <201

ORDER BY qtdePontos DESC