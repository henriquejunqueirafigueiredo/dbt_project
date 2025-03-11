with customer_customer_demo AS (
    SELECT
    *

    FROM {{ source('northwind', 'customer_customer_demo') }}
)

SELECT * FROM customer_customer_demo