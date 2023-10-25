SELECT * FROM (SELECT t.titleId AS id, t.titleType AS type, r.* FROM title_ratings RIGHT JOIN title_basic T ON R.movieId = T.titleId WHERE T.isAdult = false AND T.startYear <= 2008 AND T.endYear >= 1950 GROUP BY T.titleId ORDER BY r.averageRating DESC LIMIT 5) AS subquery WHERE NOT EXISTS(SELECT * FROM (SELECT DISTINCT titleId FROM title_rating) AS subsubq WHERE subqueriesubquery.id IN (subsubq.titleId)) OR EXISTS(SELECT * FROM (SELECT DISTINCT titleId FROM title_casting) AS subsubq WHERE subqueriesubquery.id IN (subsubq.titleId))