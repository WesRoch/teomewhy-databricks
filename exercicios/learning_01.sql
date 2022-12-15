-- Databricks notebook source
-- DBTITLE 1,Ex 01
-- SELECIONE TODOS OS CLIENTES PAULISTANOS
SELECT
  idCliente,
  descCidade,
  descUF
FROM
  silver_olist.cliente
WHERE
  descCidade = 'sao paulo'

-- COMMAND ----------

-- DBTITLE 1,Ex 02
-- SELECIONE TODOS OS CLIENTES PAULISTANOS
SELECT
  idCliente,
  descCidade,
  descUF
FROM
  silver_olist.cliente
WHERE
  descUF = 'SP'

-- COMMAND ----------

-- DBTITLE 1,Ex 03
-- SELECIONE TODOS OS CLIENTES PAULISTANOS
SELECT
  idCliente,
  descCidade,
  descUF
FROM
  silver_olist.cliente
WHERE
  descUF = 'SP'
  OR descUF = 'RJ'

-- COMMAND ----------

-- DBTITLE 1,Ex 04
-- SELECIONE TODOS OS PRODUTOS DE PERFUMARIA E BEBES COM ALTURA MAIOR QUE 5CM
SELECT
  *
FROM
  silver_olist.produto
WHERE
  descCategoria IN ('perfumaria', 'bebes')
  AND vlAlturaCm > 5

-- COMMAND ----------


