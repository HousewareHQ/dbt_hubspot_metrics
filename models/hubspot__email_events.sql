with email_events as (
    select * from {{ var('email_event') }}
)

select * from email_events
