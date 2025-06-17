with cte as  (
   select * 
   from {{ source('us_crime', 'urban_crime_incident_log') }}  
   where  CITY = 'New York' and OFFENSE_CATEGORY in ('Theft','Driving Under The Influence')
)
 select 
    OFFENSE_CATEGORY,
    {{get_season('DATE')}} as season,
    {{DAY_TYPE('DATE')}} as DAY_TYPE,
    count(OFFENSE_CATEGORY) NUMBER_OF_OCCURENCES
from cte
group by OFFENSE_CATEGORY,season,DAY_TYPE
order by NUMBER_OF_OCCURENCES desc