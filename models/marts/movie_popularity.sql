select
m.title,
sum(v.minutes_watched) as total_watch_time
from {{ ref('stg_movies') }} m
join {{ ref('stg_views') }} v
on m.movie_id = v.movie_id
group by 1