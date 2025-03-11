with region AS (
    SELECT
    *

    FROM {{ source('northwind', 'region') }}
)

SELECT * FROM region