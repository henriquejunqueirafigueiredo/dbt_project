with suppliers AS (
    SELECT
    *

    FROM {{ source('northwind', 'suppliers') }}
)

SELECT * FROM suppliers