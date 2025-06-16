WITH CTE AS (
select

DATE(TO_TIMESTAMP(START_AT)) AS DATE_STARTED_AT,
HOUR(TO_TIMESTAMP(START_AT)) AS HOUR_STARTED_AT,
    {{DAY_TYPE('START_AT')}} AS DAY_TYPE,
    {{get_season('START_AT')}}
    -- {{function1('START_AT')}}
from
{{ source('my_source', 'bike') }}
where START_AT != 'started_at' and START_AT != 'started_at'
)
select
*
from CTE