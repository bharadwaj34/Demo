with RAW_LINKS as (
    select * from MOVIELENS.RAW.RAW_LINKS
)

select 
    MOVIEID as movie_id,
    IMDBID as imdb_id,
    TMDBID as tmdb_id
from RAW_LINKS