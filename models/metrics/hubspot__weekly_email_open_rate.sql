-- depends_on: {{ var('email_event') }}

select *
from {{ metrics.calculate(
    metric('hubspot__weekly_email_open_rate'),
    grain='week',
    dimensions=[],
    secondary_calculations=[]
)}}
