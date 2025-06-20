with raw_scores as (
    select * from {{ ref('RAW_GENOME_SCORES') }}
)

select 
    movie_id,
    tag_id,
    round(relevance,4) as relevance_score
from raw_scores
where relevance >0