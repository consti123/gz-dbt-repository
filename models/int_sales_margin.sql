
SELECT
quantity
, pruchase_price 
, revenue 
FROM {{ ref("stg_raw__sales")}}
INNER JOIN {{ ref("stg_raw__sales")}}
USING product_id
