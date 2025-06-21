with src_tags as(
    select * from MOVIELENS.RAW.RAW_TAGS
)

select 
    USERID as user_id,
    MOVIEID as movie_id,
    TAG as tag,
    TO_TIMESTAMP_LTZ(timestamp) as tag_timestamp
from src_tags