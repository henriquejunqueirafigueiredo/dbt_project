with employee_territories AS (
    SELECT
    *

    FROM {{ source('northwind', 'employee_territories') }}
)

SELECT * FROM employee_territories