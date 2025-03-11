{{
    config(
        tags=['vendas']
    )
}}

    WITH pedidos AS (
    SELECT *
    FROM {{ ref('stg_orders') }}
),

pedidos_detalhes AS (
    SELECT *
    FROM {{ ref('stg_order_details') }}
),

customers AS (
    SELECT *
    FROM {{ ref('stg_customers') }}
),

employees AS (
    SELECT *
    FROM {{ ref('stg_employees') }}
),

products AS (
    SELECT *
    FROM {{ ref('stg_products') }}
)

SELECT
    pedidos.order_id,
    pedidos.customer_id,
    pedidos.employee_id,
    pedidos.order_date,
    pedidos.required_date,  
    pedidos.shipped_date,
    pedidos.ship_via,
    pedidos.freight,
    pedidos.ship_name,
    pedidos.ship_address,
    pedidos.ship_city,
    pedidos.ship_region,
    pedidos.ship_postal_code,
    pedidos.ship_country, 
    pedidos.status_envio,

    pedidos_detalhes.product_id,
    pedidos_detalhes.unit_price as unit_price_order,
    pedidos_detalhes.quantity,
    pedidos_detalhes.discount,

    customers.company_name,
    customers.contact_name,
    customers.city as customers_city,
    customers.country as customers_country,

    employees.first_name,
    employees.city as employess_city,
    employees.country as employees_country, 
    employees.home_phone, 

    products.product_name,
    products.quantity_per_unit,
    products.unit_price as unir_price_product,  

FROM pedidos
LEFT JOIN pedidos_detalhes ON pedidos.order_id = pedidos_detalhes.order_id
LEFT JOIN customers ON pedidos.customer_id = customers.customer_id
LEFT JOIN employees ON pedidos.employee_id = employees.employee_id
LEFT JOIN products ON pedidos_detalhes.product_id = products.product_id


