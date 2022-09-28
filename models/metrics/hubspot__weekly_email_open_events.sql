-- depends_on: {{ ref('hubspot__email_events') }}

select *
from {{ metrics.calculate(
    metric('hubspot__weekly_email_open_events'),
    grain='week',
    dimensions=[],
    secondary_calculations=[]
)}}
