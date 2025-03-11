with categories AS (
    SELECT
    *

    FROM {{ source('northwind', 'categories') }}
)

SELECT * FROM categories