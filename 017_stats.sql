SELECT 
    round(avg(QtdePontos), 2) AS carteira_meida,
    round(1. * sum(qtdePontos) / count(IdCliente),2 ),
    min(qtdePontos) AS mim_carteira,
    max(qtdePontos) AS max_carteira,
    sum(flEmail),
    sum(flTwitch)


FROM clientes