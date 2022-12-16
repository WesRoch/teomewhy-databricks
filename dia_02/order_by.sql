-- Databricks notebook source
SELECT
  descUF,
  COUNT (DISTINCT idClienteUnico) AS qtdClienteEstado
FROM
  silver_olist.cliente
GROUP BY
  descUF
ORDER BY
  descUF

-- COMMAND ----------

SELECT
  descUF,
  COUNT (DISTINCT idClienteUnico) AS qtdClienteEstado
FROM
  silver_olist.cliente
GROUP BY
  descUF
ORDER BY
  qtdClienteEstado

-- COMMAND ----------


