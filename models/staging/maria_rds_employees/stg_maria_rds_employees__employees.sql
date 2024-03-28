with 

source as (

    select * from {{ source('maria_rds_employees', 'employees') }}

),

renamed as (

    select
        emp_no,
        hire_date,
        last_name,
        gender,
        birth_date,
        first_name,
        _fivetran_deleted,
        _fivetran_synced

    from source

)

select * from renamed
