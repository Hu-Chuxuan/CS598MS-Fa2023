SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Animation%'
AND tb.genres NOT LIKE '%Horror%'
AND tb.startYear >= 2010
AND tb.runtimeMinutes <= 120
AND tb.primaryTitle NOT IN ('Sing  (2016)')
ORDER BY tr.averageRating DESC
LIMIT 5