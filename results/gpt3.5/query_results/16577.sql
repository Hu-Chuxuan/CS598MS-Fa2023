SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.genres LIKE '%Asian%'
AND tb.startYear >= 1999
AND tb.tconst NOT IN ('tt1591095', 'tt0167404', 'tt1451095')
ORDER BY tr.averageRating DESC
LIMIT 5