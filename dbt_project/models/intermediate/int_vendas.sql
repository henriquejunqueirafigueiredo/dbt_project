WITH orders AS (
    SELECT
        extract(month from order_date) as mes,
        extract(year from order_date) as ano,
        freight as total_fretes
    FROM  {{ ref('stg_orders') }}
),
    vendas as (
    SELECT
        mes,
        ano,
        sum(total_fretes) as total_fretes
    FROM orders
    group by mes, ano
)

SELECT *
FROM vendas