with raw_genome as(
    select * from MOVIELENS.RAW.RAW_GENOME_TAGS
)

select 
    TAGID as genome_id,
    TAG as tag
from raw_genome