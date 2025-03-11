{{ config(materialized='table') }}


with pedidos as (
    select *
    from {{ ref('int_pedidos') }}
)

select *
from pedidos