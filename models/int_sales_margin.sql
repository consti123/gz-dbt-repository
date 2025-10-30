
SELECT
revenue - (quantity*purchase_price) AS margin
, quantity*purchase_price AS purchase_cost
, quantity
, revenue 
FROM {{ ref("stg_raw__sales")}} AS a
INNER JOIN {{ ref("stg_raw__product")}} AS b
USING(products_id)
