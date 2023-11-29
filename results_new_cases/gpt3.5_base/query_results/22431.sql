SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear, tb1.genres, tr.averageRating
FROM title_basics tb1
INNER JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE (tb1.genres LIKE '%Horror%' OR tb1.genres LIKE '%Comedy%')
AND (tb1.primaryTitle NOT IN ('Grease  (1978)', 'Beauty and the Beast  (2017)', 'Rent  (2005)', 'Chicago  (2002)'))
ORDER BY tr.averageRating DESC
LIMIT 10