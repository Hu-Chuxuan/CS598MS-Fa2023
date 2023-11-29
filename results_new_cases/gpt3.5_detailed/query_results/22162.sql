SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' 
AND tb.tconst <> 'tt0322330' 
AND tb.startYear > 2000 
AND tb.runtimeMinutes > 60 
AND tb.tconst NOT IN ('tt0077651', 'tt0087800')
ORDER BY tr.averageRating DESC
LIMIT 5