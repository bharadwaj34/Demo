WITH CTE AS (
select

DATE(TO_TIMESTAMP(START_AT)) AS DATE_STARTED_AT,
HOUR(TO_TIMESTAMP(START_AT)) AS HOUR_STARTED_AT,
    {{DAY_TYPE('start_at')}} AS DAY_TYPE,
    {{get_season('start_at')}},
    {{function1('start_at')}} as started_at
from
{{ source('my_source', 'bike') }}
where START_AT != 'started_at' and START_AT != 'started_at'
)
select
*
from CTE