select released_year, round(avg(meta_score),2) as avg_meta_score, count(*) as count_movie
from imdb_top_1000
where released_year >= 2010
group by released_year
having count(*) > 8
order by avg_meta_score desc
limit 5