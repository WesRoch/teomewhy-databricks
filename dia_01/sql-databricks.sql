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

SELECT
  *
FROM
  silver_olist.pedido
WHERE
  descSituacao = 'delivered'
  
-- selecionar todas as colunas da tabela pedido AONDE a situação é entregue 'delivered'

-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido
WHERE
  descSituacao = 'canceled'
  
  -- neste caso, como tem menos de 1000 linhas, exatos 625, ele retornou todas as linhas da tabela de acordo com a querie.

-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido
WHERE
  descSituacao = 'shipped'
  AND YEAR (dtPedido) = '2018'

-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido
WHERE
  (
    descSituacao = 'shipped'
    OR descSituacao = 'canceled'
  )
  AND YEAR (dtPedido) = '2018'

-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido
WHERE
  (
    descSituacao = 'shipped'
    OR 'canceled'
  )
  AND YEAR (dtPedido) = '2018'

-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido
WHERE
  descSituacao IN ('shipped', 'canceled')
  AND YEAR (dtPedido) = '2018'

-- COMMAND ----------

SELECT
  *,
  DATEDIFF (dtEstimativaEntrega, dtAprovado) AS diasAtraso
FROM
  silver_olist.pedido
WHERE
  descSituacao IN ('shipped', 'canceled')
  AND YEAR(dtPedido) = '2018'
  AND DATEDIFF(dtEstimativaEntrega, dtAprovado) > 30
ORDER BY
  diasAtraso

-- COMMAND ----------


