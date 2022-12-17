-- Databricks notebook source
WITH tb_vendas_vendedores AS (
  SELECT
    idVendedor,
    COUNT(*) AS qtdVendas
  FROM
    silver_olist.item_pedido
  GROUP BY
    idVendedor
  ORDER BY
    qtdVendas DESC
),
tb_row_number AS (
  SELECT
    T1.*,
    T2.descUF,
    ROW_NUMBER() OVER (
      PARTITION BY T2.descUF
      ORDER BY
        qtdVendas DESC
    ) AS RN
  FROM
    tb_vendas_vendedores AS T1
    LEFT JOIN silver_olist.vendedor AS T2 ON T1.idVendedor = T2.idVendedor
  ORDER BY
    descUF,
    qtdVendas DESC
)
SELECT
  *
FROM
  tb_row_number
WHERE
  RN <= 1 
  -- o qualify ordena a window function sem precisar pedir para ordenar
  -- pode usar o qualify na row_number e também depois

-- COMMAND ----------


