WITH trend_imdb_rating as ( -- Best movies from user rating
	select released_year, round(avg(imdb_rating),2) as avg_imdb_rating, count(*) as count_movie
	from imdb_top_1000
    where released_year >= 2010
	group by released_year
	having count(*) > 8
	order by avg_imdb_rating desc
    limit 5), 
trend_meta_score as ( -- Best movies from critics score
	select released_year, round(avg(meta_score),2) as avg_meta_score, count(*) as count_movie
	from imdb_top_1000
    where released_year >= 2010
	group by released_year
	having count(*) > 8
	order by avg_meta_score desc
    limit 5)

SELECT genre, COUNT(*) AS genre_count
FROM (
    SELECT released_year,
        SUBSTRING_INDEX(SUBSTRING_INDEX(genre, ', ', n.digit+1), ', ', -1) AS genre -- Extract each genre from the comma-separated list
	FROM imdb_top_1000
	JOIN (SELECT 0 AS digit UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3) AS n  -- Generates a sequence of numbers the maximum number of genres
    ON LENGTH(genre) - LENGTH(REPLACE(genre, ',', '')) >= n.digit
) AS genres_table
WHERE released_year IN ( -- Select the released year of the best movies by user and critic score
	SELECT ti.released_year
	FROM trend_imdb_rating as ti
	INNER JOIN trend_meta_score as tm
	ON ti.released_year = tm.released_year
	)
GROUP BY genre
ORDER BY genre_count desc
