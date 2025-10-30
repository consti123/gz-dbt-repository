SELECT 
date_date
, SUM(click) AS clicks 
, SUM(CAST(ads_cost AS FLOAT64)) AS ads_cost
, SUM(impression) AS impressions
FROM {{ ref('int_campaigns') }}
GROUP BY date_date
ORDER BY date_date