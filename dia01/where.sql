-- Databricks notebook source
SELECT * 
FROM silver_olist.pedido

WHERE descSituacao = 'delivered'

-- LIMIT 100

-- leia-se: selecione todas as colunas da tabela, onde a situação do pedido seja entregue ou 'delivere'

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao = 'shipped'
AND year (dtPedido) = '2018'

-- leia-se: selecione todas as colunas da tabela, filtrando todos os pedidos de 2018

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018'

-- leia-se: selecione todas as colunas da tabela, filtrando todos os pedidos (enviados ou cancelados)de 2018

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao IN ('shipped','canceled')
AND year(dtPedido) = '2018'

-- leia-se: selecione todas as colunas da tabela, filtrando todos os pedidos (enviados ou cancelados)de 2018

-- COMMAND ----------

SELECT * 
      datediff(dtEstimativaEntrega, dtAprovado)
      
FROM silver_olist.pedido

WHERE descSituacao IN ('shipped','canceled')
AND year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega, dtAprovado) > 30
