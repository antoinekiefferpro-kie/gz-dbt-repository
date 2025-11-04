/*Total number of transactions
Total revenue
Average Basket
Operational Margin
Total purchase cost
Total shipping fees
Total log costs
Total quantity of products sold.*/

SELECT
date_date,
COUNT (orders_id) AS Nb_of_transactions,
ROUND(SUM (revenue),2) AS Total_Revenue,
ROUND(SUM(revenue)/COUNT (orders_id),2) AS Average_Basket,
SUM (Operational_margin) AS Operational_margin,
ROUND(SUM (purchase_cost),2) AS Total_Purchase_cost,
ROUND(SUM(shipping_fee),2) AS Total_Shipping_fee,
ROUND(SUM(logcost),2) AS Total_Logcost,
ROUND(SUM(quantity),2) AS Total_of_products_sold
FROM {{ ref('int_orders_operational')}}
GROUP BY date_date
ORDER BY date_date 
