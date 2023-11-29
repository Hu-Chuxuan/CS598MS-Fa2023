SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt0109686', 'tt0829482')  -- excluding Dumb and Dumber and Superbad
ORDER BY tr.averageRating DESC
LIMIT 5