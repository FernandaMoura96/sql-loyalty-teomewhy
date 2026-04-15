--SELECT IdProduto,
--    COUNT(*)

--FROM transacao_produto

--GROUP BY IdProduto

SELECT  
    IdCliente,
    SUM(QtdePontos) AS Soma_pontos,
    count(IdTransacao) AS qtdeTrasacao

FROM 
    transacoes

WHERE 
    DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

GROUP BY IdCliente

ORDER BY Soma_pontos Desc

LIMIT 10


-- Aqui separamos os clientes de acordo a quantidade de pontos
-- identificamos a quantidade de transações para premiar os clientes 
-- de acordo com esses critérios, e identicar o perfil de transação de cada um deles.