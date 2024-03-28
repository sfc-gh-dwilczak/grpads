with 

source as (

    select * from {{ source('maria_rds_employees', 'departments') }}

),

renamed as (

    select
        dept_no,
        dept_name,
        _fivetran_deleted,
        _fivetran_synced

    from source

)

select * from renamed
