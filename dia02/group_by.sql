-- Databricks notebook source
SELECT
    descUF,  -- pelo que eu quero agrupar, group by é vida
    COUNT(*)
    
FROM silver_olist.cliente
GROUP BY descUF 

-- COMMAND ----------

SELECT
    descUF,  
    COUNT(DISTINCT idClienteUnico) -- dados duplicados
    
FROM silver_olist.cliente
GROUP BY descUF 
