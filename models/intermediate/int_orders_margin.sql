SELECT
orders_id
,date_date 
,revenue 
,quantity
,purchase_cost
,margin
FROM {{ ref("stg_raw__sales")}} 
INNER JOIN {{ ref("int_sales_margin")}} 
USING(orders_id)

