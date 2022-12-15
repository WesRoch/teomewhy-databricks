-- Databricks notebook source
SELECT
  COUNT (*) AS nrLinhasNaoNulas
FROM
  silver_olist.cliente

-- COMMAND ----------

SELECT
  COUNT (*) AS nrLinhasNaoNulas, --linhas nao nulas
  COUNT (idCliente) AS nrIdClienteNAoNulo -- id de clientes nao nulos
FROM
  silver_olist.cliente

-- COMMAND ----------

SELECT
  COUNT (*) AS nrLinhasNaoNulas, --linhas nao nulas
  COUNT (idCliente) AS nrIdClienteNAoNulo, --id de clientes nao nulos
  COUNT (DISTINCT idCliente) AS nrIdClienteDistintos -- id de clientes distintos
FROM
  silver_olist.cliente

-- COMMAND ----------

SELECT
  COUNT (*) AS nrLinhasNaoNulas,
  --linhas nao nulas
  COUNT (idCliente) AS nrIdClienteNAoNulo,
  --id de clientes nao nulos
  COUNT (DISTINCT idCliente) AS nrIdClienteDistintos,
  -- id de clientes distintos
  COUNT (DISTINCT idClienteUnico) AS nrIdClienteUnicoDistintos
FROM
  silver_olist.cliente

-- COMMAND ----------

SELECT
  COUNT (*) AS nrLinhasNaoNulas,
  --linhas nao nulas
  COUNT (idCliente) AS nrIdClienteNAoNulo,
  --id de clientes nao nulos
  COUNT (DISTINCT idCliente) AS nrIdClienteDistintos,
  -- id de clientes distintos
  COUNT (idClienteUnico) AS nrIdClienteUnico,
  COUNT (DISTINCT idClienteUnico) AS nrIdClienteUnicoDistintos -- id de cliente unicos distintos
FROM
  silver_olist.cliente

-- COMMAND ----------

SELECT
  COUNT(*) AS nrClientePresPrudente
FROM
  silver_olist.cliente
WHERE
  descCidade = 'presidente prudente'

-- COMMAND ----------

SELECT
  COUNT(*) AS qtdLinhas,
  COUNT(DISTINCT idCliente) AS qtdClientes,
  COUNT(DISTINCT idClienteUnico) qtdClientesUnicos
FROM
  silver_olist.cliente
WHERE
  descCidade IN ('presidente prudente', 'curitiba')

-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido

-- COMMAND ----------

SELECT
  AVG(vlPreco) -- media da coluna vlPreco - preco medio dos produtos
FROM
  silver_olist.item_pedido

-- COMMAND ----------

SELECT
  AVG(vlPreco) AS avgPreco,
  -- media da coluna vlPreco - preco medio dos produtos
  MAX(vlPreco) AS maxPreco,
  AVG(vlFrete) AS avgFrete,
  MAX(vlFrete) AS maxFrete,
  MIN(vlFrete) AS minFrete
FROM
  silver_olist.item_pedido

-- COMMAND ----------

SELECT
  PERCENTILE(vlPreco, 0.5) AS medianPreco -- mediana da coluna vlPreco - preco mediano dos produtos dos produtos
FROM
  silver_olist.item_pedido

-- COMMAND ----------

SELECT
  ROUND (AVG(vlPreco), 2) AS avgPreco,
  INT(PERCENTILE(vlPreco, 0.5)) AS medianPreco -- mediana da coluna vlPreco - preco mediano dos produtos dos produtos
FROM
  silver_olist.item_pedido

-- COMMAND ----------


