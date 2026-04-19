SELECT   
    IdCliente,
    SUM(QtdePontos) AS soma_pontos,
    count(IdTransacao) AS qtdeTrasacao

FROM 
    transacoes

WHERE 
    DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

GROUP BY IdCliente
HAVING soma_pontos >= 4000

ORDER BY Soma_pontos Desc

LIMIT 10


