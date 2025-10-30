SELECT
a.orders_id
,a.date_date 
,a.revenue 
,a.quantity
,a.purchase_cost
,a.margin
, b.shipping_fee
, b.logcost
, b.ship_cost
, margin + shipping_fee - logcost - ship_cost AS operational_margin
FROM {{ ref("int_orders_margin")}} AS a 
INNER JOIN {{ ref("stg_raw__ship")}} AS b
USING(orders_id)