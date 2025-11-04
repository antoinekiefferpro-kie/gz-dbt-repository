SELECT*,
ROUND (purchase_price*quantity,2) AS purchase_cost,
ROUND (revenue - purchase_price*quantity,2) AS margin
FROM {{ ref('stg_gz_raw_data__sales')}}
JOIN {{ ref('stg_gz_raw_data__product')}}
USING (products_id)