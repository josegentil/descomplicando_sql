-- Databricks notebook source
SELECT COUNT(*) AS nrLinhasNaoNulas -- linhas não nulas
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
     COUNT(*) AS nrLinhasNaoNulas, -- linhas não nulas
     COUNT(idCliente) AS nrIdClienteNaoNulo -- id clientes não nulos
      
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
     COUNT(*) AS nrLinhasNaoNulas, -- linhas não nulas
     COUNT(idCliente) AS nrIdClienteNaoNulo, -- id clientes não nulos
     COUNT(distinct idCliente) AS nrIdClienteDistintos -- id de clientes distintos 
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
     COUNT(*) AS nrLinhasNaoNulas, -- cont linhas não nulas
     COUNT(idCliente) AS nrIdClienteNaoNulo, -- conta id clientes não nulos
     COUNT(distinct idCliente) AS nrIdClienteDistintos, -- conta id de clientes distintos 
     COUNT(distinct idClienteUnico) AS nrIdClienteUnicoDistintos -- conta id de clientes unicos distintos
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
    COUNT(*) AS qtLinhas,
    count(distinct idCliente) AS qtClientes,
    count(distinct idClienteUnico) as qtClientesUnicos
    
FROM silver_olist.cliente

WHERE descCidade IN ('presidente prudente', 'curitiba')


-- COMMAND ----------

SELECT 
      ROUND( AVG(vlPreco), 2) AS avgPreco, -- media da colun vlPreco (preço médio dos produtos)
      
      INT(PERCENTILE(vlPreco, 0.5)) AS medianPreo, -- preco mediano do produto
      
      MAX(vlPreco) AS maxPreco, -- maximo da coluna vlPreco
      AVG(vlFrete) AS avgFrete, -- media da coluna vlFrete
      MAX(vlFrete) AS maxFrete,
      MIN(vlFrete) AS minFrete
      
FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT COUNT(*)
FROM silver_olist.cliente
WHERE descUF = 'SP'
