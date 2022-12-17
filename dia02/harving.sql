-- Databricks notebook source
-- Having, filtra os dados agrupados
-- Where é onde seleciona apenas os dados necessários

-- Pois Having é um filtro que você coloca para trabalhar com as agregações que você fez no Select
SELECT descUF,
        COUNT(idVendedor) AS qtVendedorUF

FROM silver_olist.vendedor

WHERE descUF IN ('SP', 'MG', 'RJ', 'ES')

GROUP BY descUF

HAVING qtVendedorUF >= 100

ORDER BY qtVendedorUF DESC
