{{ config(
    schema='marts',
    materialized='view'
) }}


with vendas as (
    select *
    from {{ ref('int_vendas') }}
)

SELECT * from vendas