SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%' 
AND tb.startYear >= 2010 
AND tr.averageRating >= 7
AND tb.tconst <> 'tt1385826'
ORDER BY tr.averageRating DESC
LIMIT 1