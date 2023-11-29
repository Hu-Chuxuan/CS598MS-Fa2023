SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Animation%' 
AND tb.startYear >= 2010 
AND tb.tconst NOT IN ('tt3896198', 'tt1772341') 
ORDER BY tr.averageRating DESC
LIMIT 5