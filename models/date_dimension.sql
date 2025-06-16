WITH CTE AS (
select

DATE(TO_TIMESTAMP(START_AT)) AS DATE_STARTED_AT,
HOUR(TO_TIMESTAMP(START_AT)) AS HOUR_STARTED_AT,
    {{DAY_TYPE('START_AT')}} AS DAY_TYPE,
    {{get_season('START_AT')}}
    {{function1('START_AT')}}
from
{{ source('my_source', 'bike') }}
-- where START_AT != 'start_at' and START_AT != 'start_at'
WHERE START_AT IS NOT NULL
  AND START_AT != ''

)
select
*
from CTE