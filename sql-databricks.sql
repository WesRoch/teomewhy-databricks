-- Databricks notebook source
SELECT 'Olá Mundo'

-- COMMAND ----------

SELECT * FROM silver_olist.pedido

-- COMMAND ----------

SELECT COUNT (*) FROM silver_olist.pedido

-- COMMAND ----------

SELECT 1 + 10 * 2

-- COMMAND ----------

SELECT * FROM silver_olist.cliente

-- COMMAND ----------

SELECT COUNT (*) FROM silver_olist.cliente

-- COMMAND ----------

-- Selecione as colunas idPedido e descSituacao da tabela silver_olist.pedido
SELECT idPedido
      ,descSituacao

FROM silver_olist.pedido

-- COMMAND ----------

SELECT
  idPedido,
  descSituacao
FROM
  silver_olist.pedido
LIMIT
  5

-- COMMAND ----------

SELECT
  *,
  DATEDIFF (dtEstimativaEntrega, dtEntregue) AS qtDiasPromessaEntrega 
FROM
  silver_olist.pedido

-- COMMAND ----------


