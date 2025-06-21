with src_movies as (
    select * from {{ ref('raw_movies') }}
)

select 
    movie_id,
    INITCAP(TRIM(title)) as movie_title,
    SPLIT(genres, '|') as genres_array,
    genres
from src_movies