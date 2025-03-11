with us_states AS (
    SELECT
    *

    FROM {{ source('northwind', 'us_states') }}
)

SELECT * FROM us_states