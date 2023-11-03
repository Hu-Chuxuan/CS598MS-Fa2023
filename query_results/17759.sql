SELECT * FROM
( SELECT rating_average AS avgRat, COUNT(*) AS cntFav, title_title as tt, year AS yr, genreID AS gid, PRIMARY_NAME AS pnm WHERE title_type = "movie" AND (genreID IN ('comedy','drama') OR cast_category IS NULL)) AS movies GROUP BY title_title,year ORDER by avgRat DESC LIMIT 5