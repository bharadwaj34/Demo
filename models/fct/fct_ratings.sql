{{
    config(
        materialized = 'incremental',
        on_schema_change ='fail'
    )
}}
with raw_ratings as (
    select * from {{ ref('raw_rating') }}

)
select 
    user_id,
    movie_id,
    rating,
    rating_timestamp
from raw_ratings
where rating is not null 

{% if is_incremental() %}
  and rating_timestamp > (select max(rating_timestamp) from {{this}})
{% endif%}


-- raw_rating (base table) = 5pm -> 6pm 
-- fct_ratings(fct table) = 5pm 

-- this = fct_ratings 
--6>5