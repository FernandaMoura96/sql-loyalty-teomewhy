--liste os produtos cujo nome inicia com 'venda de' 

SELECT DescNomeProduto,IdProduto

FROM produtos

WHERE DescNomeProduto LIKE '%venda de%'