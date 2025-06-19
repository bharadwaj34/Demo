with src_geome_score as (
    select * from MOVIELENS.RAW.RAW_GENOME_SCORES
)

select 
    TAGID as tag_id,
    MOVIEID as movie_id,
    RELEVANCE as relevance
from src_geome_score