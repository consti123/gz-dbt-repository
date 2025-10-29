with 

source as (

    select * from {{ source('raw', 'raw_gz_product') }}

),

renamed as (

    select

    from source

)

select * from renamed