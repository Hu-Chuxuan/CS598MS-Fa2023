SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Musical%'
AND tb.startYear < 2017
AND tb.tconst NOT IN ('tt2948356', 'tt6316138', 'tt0840322')
ORDER BY tr.averageRating DESC
LIMIT 5