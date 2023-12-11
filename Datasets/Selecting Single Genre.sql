SELECT movie_title,
SUBSTRING_INDEX(SUBSTRING_INDEX(genre, ', ', n.digit+1), ', ', -1) AS genre -- Extract each genre from the comma-separated list
FROM imdb_top_1000
JOIN (SELECT 0 AS digit UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3) AS n  -- Generates a sequence of numbers the maximum number of genres
ON LENGTH(genre) - LENGTH(REPLACE(genre, ',', '')) >= n.digit