/*datemonth
ads_margin
average_basket
operational_margin
ads_cost
ads_impression
ads_clicks
quantity
revenue
purchase_cost
margin
shipping_fee
log_cost
ship_cost*/

WITH month_calculated AS(
SELECT*,
CONCAT(EXTRACT(YEAR FROM date_date),"_", EXTRACT (MONTH FROM date_date)) AS month
FROM {{ ref('finance_campaigns_day')}}
)
SELECT
month,
SUM(ads_margin) AS ads_margin,
AVG(Average_Basket) AS Average_Basket,
SUM(operational_margin) AS operational_margin,
SUM(ads_cost) AS ads_cost,
SUM(impression) AS ads_impression,
SUM(click) AS ads_clicks,
SUM(Nb_of_transactions) AS Nb_of_transactions,
SUM(Total_Revenue) AS Total_Revenue,
SUM(Total_Purchase_cost) AS Total_Purchase_cost,
SUM(margin) AS margin,
SUM(Total_Shipping_fee) AS Total_Shipping_fee,
SUM(Total_Logcost) AS Total_Logcost,
SUM(Total_Ship_cost) Total_Ship_cost,
FROM month_calculated
GROUP BY month

 

