with 

source as (

    select * from {{ source('gz_raw_data', 'adwords') }}

),

renamed as (

    select
        date_date,
        CONCAT(date_date,campaign_key) AS primary_campaign_key,
        paid_source,
        campaign_key,
        campgn_name AS campaign_name,
        CAST(ads_cost AS FLOAT64) AS ads_cost,
        impression,
        click

    from source

)

select * from renamed