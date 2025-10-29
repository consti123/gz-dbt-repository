with 

source as (

    select * from {{ source('raw', 'raw_gz_sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id,
        revenue,
        quantitiy 

    from source

)

select * from renamed