SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.tconst NOT IN ('tt1790809')  -- excluding 'Jumanji (2017)'
ORDER BY tr.averageRating DESC
LIMIT 10