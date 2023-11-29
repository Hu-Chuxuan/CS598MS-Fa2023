SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
LEFT JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt1431045')  -- excluding the user's historical preference
ORDER BY tr.averageRating DESC
LIMIT 10