-- CATEGORIZE A QTDEPONTOS DOS CLIENTES EM BAIXO, MEDIO E ALTO

SELECT 
    IdTransacao, 
    QtdePontos,

    CASE 
        WHEN QtdePontos < 11 THEN 'Baixo'
        WHEN QtdePontos <= 499 THEN 'Médio'
        ELSE 'Alto'
    END AS Categoria_Pontos
FROM 
    TRANSACOES

    ORDER BY QtdePontos ASC
