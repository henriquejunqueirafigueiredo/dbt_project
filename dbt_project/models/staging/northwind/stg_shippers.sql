with shippers AS (
    SELECT
    *

    FROM {{ source('northwind', 'shippers') }}
)

SELECT * FROM shippers