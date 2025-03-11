with customers AS (
    SELECT
    *

    FROM {{ source('northwind', 'customers') }}
)

SELECT * FROM customers