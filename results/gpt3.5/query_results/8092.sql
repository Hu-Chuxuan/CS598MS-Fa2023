SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1990
AND tb.genres LIKE '%Drama%'
AND tb.runtimeMinutes > 90
AND tb.tconst NOT IN ('tt0099785', 'tt0108037', 'tt0103241', 'tt0117008')
ORDER BY tr.averageRating DESC
LIMIT 5