select released_year, round(avg(imdb_rating),2) as avg_imdb_rating, count(*) as count_movie
from imdb_top_1000
where released_year >= 2010
group by released_year
having count(*) > 8
order by avg_imdb_rating desc
limit 5