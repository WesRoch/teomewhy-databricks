-- Databricks notebook source
SELECT
  *,
  CASE
    WHEN descUF = 'SP' THEN 'paulista'
    WHEN descUF = 'RJ' THEN 'fluminense'
    WHEN descUF = 'PR' THEN 'paranaense'
    ELSE 'outros'
  END AS descNascionalidade
FROM
  silver_olist.cliente

-- COMMAND ----------

SELECT
  *,
  CASE
    WHEN descUF = 'SP' THEN 'paulista'
    WHEN descUF = 'RJ' THEN 'fluminense'
    WHEN descUF = 'PR' THEN 'paranaense'
    ELSE 'outros'
  END AS descNascionalidade,
  CASE
    WHEN descCidade LIKE '%sao%' THEN 'Tem são no nome'
    ELSE 'não tem são no nome'
  END AS descCidadeSao
FROM
  silver_olist.cliente

-- COMMAND ----------

SELECT
  *,
  CASE
    WHEN descUF in ('SP', 'MG', 'RJ', 'ES') THEN 'sudeste'
  END AS descRegiao
FROM
  silver_olist.vendedor

-- COMMAND ----------


