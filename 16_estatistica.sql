
SELECT 
    sum(qtdePontos),
       
    sum(CASE
            WHEN QtdePontos > 0 THEN QtdePontos
      END ) AS 'PtsPositivos',
    sum(CASE
        WHEN QtdePontos < 0 THEN QtdePontos
        END) AS 'PtsNegativos',


    count(CASE
        WHEN QtdePontos < 0 THEN QtdePontos
        END) AS 'TransacoesNegativas'

FROM transacoes 

WHERE DtCriacao >= '2025-07-01'

AND DtCriacao   < '2025-08-01'
