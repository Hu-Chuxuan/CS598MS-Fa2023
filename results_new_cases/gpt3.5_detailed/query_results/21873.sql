SELECT tb.primaryTitle AS recommended_movie, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2000
AND tb.startYear <= 2010
AND tb.primaryTitle NOT IN ('Superbad', 'Kick-Ass', 'Moana')
ORDER BY tr.averageRating DESC
LIMIT 5