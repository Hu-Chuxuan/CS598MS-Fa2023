SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Animation%' 
AND tb.startYear BETWEEN 2005 AND 2015
AND tb.tconst NOT IN ('tt0435761', 'tt0848228')
ORDER BY tr.averageRating DESC
LIMIT 5