with territories AS (
    SELECT
    *

    FROM {{ source('northwind', 'territories') }}
)

SELECT * FROM territories