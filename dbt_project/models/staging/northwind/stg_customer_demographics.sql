with customer_demographics AS (
    SELECT
    *

    FROM {{ source('northwind', 'customer_demographics') }}
)

SELECT * FROM customer_demographics