SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Animation%' 
AND tb.isAdult = 0 
AND tb.startYear >= 2000 
AND tb.tconst NOT IN ('tt0315197', 'tt0247745', 'tt2096673', 'tt0910936')
ORDER BY tr.averageRating DESC
LIMIT 10