-- Databricks notebook source
SELECT
    descUF,  
    COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF 
ORDER BY descUF

-- COMMAND ----------

-- Primeira Forma

SELECT
    descUF,  
    COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF 
ORDER BY 2 -- Como as empresas fazem

-- COMMAND ----------

-- Segunda Forma

SELECT
    descUF,  
    COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF 
ORDER BY qtClienteEstado

-- COMMAND ----------

-- Terceira Forma

SELECT
    descUF,  
    COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF 
ORDER BY COUNT(DISTINCT idClienteUnico)

-- COMMAND ----------

-- Forma decrescente

SELECT
    descUF,  
    COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF 
ORDER BY qtClienteEstado DESC

-- COMMAND ----------

SELECT
    descUF,  
    COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
    
FROM silver_olist.cliente

GROUP BY descUF 
ORDER BY qtClienteEstado DESC

LIMIT 1 
