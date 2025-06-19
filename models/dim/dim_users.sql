with rating as(
    select DISTINCT user_id from {{ ref('raw_rating') }}
),

tags as(
    select DISTINCT user_id from {{ ref('raw_tags') }}
)

select DISTINCT user_id
from (
    select * from rating
    union 
    select * from tags
)