with raw_tags as (
    select * from {{ ref('RAW_GENOME_TAGS') }}
)
select 
     genome_id,
    INITCAP(trim(tag)) as tag_name
from raw_tags