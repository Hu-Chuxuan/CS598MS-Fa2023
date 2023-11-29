SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Crime%'
AND tb.startYear >= 2000
AND tb.startYear <= 2010
AND tb.tconst NOT IN ('tt0379786')  -- Exclude The Departed (2006)
ORDER BY tr.averageRating DESC
LIMIT 5