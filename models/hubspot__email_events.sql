with email_events as (
    select * from {{ ref('hubspot_source', 'stg_hubspot__email_event') }}
)

select * from email_events
