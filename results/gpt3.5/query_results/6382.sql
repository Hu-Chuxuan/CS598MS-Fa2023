SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2018
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt4651520', 'tt1485796', 'tt6359956')
ORDER BY tr.averageRating DESC
LIMIT 5