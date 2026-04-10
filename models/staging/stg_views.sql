select
view_id,
user_id,
movie_id,
minutes_watched
 from {{ source('movie_data','raw_views') }}