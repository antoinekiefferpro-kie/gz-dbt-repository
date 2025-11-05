WITH sales_purchase_cost AS(
SELECT*,
ROUND (purchase_price*quantity,2) AS purchase_cost,
FROM {{ ref('stg_gz_raw_data__sales')}}
JOIN {{ ref('stg_gz_raw_data__product')}}
USING (products_id)
)
SELECT*,
{{margin_percent('revenue','purchase_cost')}} AS margin_percent
FROM sales_purchase_cost
