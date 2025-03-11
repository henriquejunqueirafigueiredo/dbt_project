with order_details AS (
    SELECT
    *

    FROM {{ source('northwind', 'order_details') }}
)

SELECT * FROM order_details