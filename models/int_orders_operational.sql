SELECT*,
ROUND(margin + shipping_fee - ship_cost- logcost) AS Operational_margin
FROM {{ ref('int_orders_margin')}}
JOIN {{ ref('stg_gz_raw_data__ship')}}
USING (orders_id)