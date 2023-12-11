WITH trend_imdb_rating as (
	select released_year, round(avg(imdb_rating),2) as avg_imdb_rating, count(*) as count_movie
	from imdb_top_1000
    where released_year >= 2010
	group by released_year
	having count(*) > 8
	order by avg_imdb_rating desc
    limit 5), 
trend_meta_score as (
	select released_year, round(avg(meta_score),2) as avg_meta_score, count(*) as count_movie
	from imdb_top_1000
    where released_year >= 2010
	group by released_year
	having count(*) > 8
	order by avg_meta_score desc
    limit 5)

select ti.released_year
from trend_imdb_rating as ti
inner join trend_meta_score as tm
on ti.released_year = tm.released_year
order by avg_imdb_rating desc, avg_meta_score desc

