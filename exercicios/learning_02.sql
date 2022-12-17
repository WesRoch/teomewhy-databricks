-- Databricks notebook source
-- os clientes de qual estado pagaram mais frete
SELECT
  tCli.descUF,
  AVG(itemPed.vlFrete) AS avgFrete
FROM
  silver_olist.item_pedido AS itemPed
  LEFT JOIN silver_olist.pedido AS tPed ON itemPed.idPedido = tPed.idPedido
  LEFT JOIN silver_olist.cliente AS tCli ON tPed.idCliente = tCli.idCliente
GROUP BY
  tCli.descUF
ORDER BY
  avgFrete DESC
  

-- COMMAND ----------

SELECT
  tCli.descUF,
  FORMAT_NUMBER((AVG(itemPed.vlFrete)),'##.##') AS avgFrete
FROM
  silver_olist.item_pedido AS itemPed
  LEFT JOIN silver_olist.pedido AS tPed ON itemPed.idPedido = tPed.idPedido
  LEFT JOIN silver_olist.cliente AS tCli ON tPed.idCliente = tCli.idCliente
GROUP BY
  tCli.descUF
HAVING
  avgFrete > 40
ORDER BY
  avgFrete DESC
  

-- COMMAND ----------


