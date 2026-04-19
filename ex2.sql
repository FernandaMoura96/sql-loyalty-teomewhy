--pedidos realizados no fim de semana 

SELECT 
DtCriacao, IdTransacao, 
  strftime('%w', DtCriacao) AS dia_da_semana


   

FROM transacoes 
 WHERE dia_da_semana > '5'