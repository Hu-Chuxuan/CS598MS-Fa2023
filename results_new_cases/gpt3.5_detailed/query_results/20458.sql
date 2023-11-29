SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1990
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Crime%'
AND tb.genres NOT LIKE '%Horror%'
AND tb.tconst NOT IN ('tt0838283', 'tt1931533', 'tt0102926')  -- excluding movies in user preference history
ORDER BY tr.averageRating DESC, tb.runtimeMinutes
LIMIT 5