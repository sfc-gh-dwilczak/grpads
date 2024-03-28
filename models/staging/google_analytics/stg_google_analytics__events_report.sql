with 

source as (

    select * from {{ source('google_analytics', 'events_report') }}

),

renamed as (

    select
        date,
        property,
        _fivetran_id,
        event_name,
        event_count,
        total_users,
        event_count_per_user,
        _fivetran_synced,
        total_revenue

    from source

)

select * from renamed
