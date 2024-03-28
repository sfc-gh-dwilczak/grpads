with 

events as (select * from {{ ref('stg_google_analytics__events_report') }}),
employees as (select * from {{ ref('stg_maria_rds_employees__employees') }}),

combined as (

    select
        events.event_name,
        events.event_count,
        events.total_users,

        employees.emp_no,
        employees.hire_date,
        employees.last_name,
        employees.gender,
        employees.birth_date,
        employees.first_name,

    from 
        employees
    join
        events
)

select * from combined
