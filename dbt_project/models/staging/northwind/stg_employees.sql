with employees AS (
    SELECT
    *

    FROM {{ source('northwind', 'employees') }}
)

SELECT * FROM employees