with prodcuts AS (
    SELECT
    *

    FROM {{ source('northwind', 'products') }}
)

SELECT * FROM prodcuts