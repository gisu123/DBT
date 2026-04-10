select
movie_id,
title,
genre
 from {{ source('movie_data','raw_movies') }}