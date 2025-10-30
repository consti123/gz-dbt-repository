{{config(materialized='table')}}
SELECT
date_date
,ROUND(COUNT(DISTINCT orders_id),0) AS nb_transactions
,ROUND(SUM(revenue),0) AS total_revenue
,ROUND(SUM(operational_margin),0) AS operational_margin
,ROUND(SUM(revenue)/NULLIF((ROUND(COUNT(DISTINCT orders_id),0)) ,0), 2) AS average_basket
,ROUND(SUM(purchase_cost),0) AS total_purchase_cost
,ROUND(SUM(shipping_fee),0) AS total_shipping_fee
,ROUND(SUM(logcost),0) AS total_logcost
,ROUND(SUM(ship_cost),0) AS total_ship_cost
,ROUND(SUM(quantity),0) AS quantity
FROM {{ ref('int_orders_operational') }}
GROUP BY date_date
ORDER BY date_date