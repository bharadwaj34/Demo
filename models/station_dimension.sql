WITH BIKE as (

select
distinct
START_STATION_ID AS station_id,
start_station_name as station_name,
START_LAT as station_lat,
START_ING as start_station_lng

from {{ source('my_source', 'bike') }}

where RIDE_ID != '"bikeid"'


)

select
*
from BIKE