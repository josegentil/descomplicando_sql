-- Databricks notebook source
-- DBTITLE 1,Exercício 01
-- 01 Selecione todos os clientes paulistanos

SELECT * 
FROM silver_olist.cliente
WHERE descCidade = 'sao paulo'


-- COMMAND ----------

-- DBTITLE 1,Exercício 02
-- 02 Selecione todos os clientes paulistas
SELECT * 
FROM silver_olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------

-- DBTITLE 1,Exercício 03
-- O3 Selecione todos os vendedores cariocas e paulistas
SELECT *

FROM silver_olist.vendedor

WHERE descCidade = 'rio de janeiro'
OR descUF = 'SP'

-- COMMAND ----------

-- DBTITLE 1,Exercício 04
--04 Selecione produtos de perfumaria e bebes com altura maior que 5cm

SELECT * 

FROM silver_olist.produto

WHERE descCategoria IN ('perfumaria', 'bebes')
AND vlAlturaCm > 5

-- COMMAND ----------

-- DBTITLE 1,Tempo de foco - 01
-- Lista de pedidos com mais de um item 

SELECT *
FROM silver_olist.pedido


