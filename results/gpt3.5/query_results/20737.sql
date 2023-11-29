SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.startYear >= 2010
AND tb.tconst NOT IN ('tt1431045')  -- Exclude Deadpool (2016)
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5