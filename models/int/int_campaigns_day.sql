SELECT
date_date,
primary_campaign_key,
paid_source,
campaign_key,
campaign_name,
SUM(ads_cost) AS ads_cost,
SUM (impression) AS impression,
SUM (click) AS click,
FROM {{ ref('int_campaigns')}}
GROUP BY date_date,primary_campaign_key,paid_source,campaign_key,campaign_name