SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt0120338', 'tt0120689') -- Exclude Titanic (2012) and The Green Mile (1999)
AND tb.tconst != 'tt0109830' -- Exclude Forrest Gump (1994)
ORDER BY tr.averageRating DESC
LIMIT 5