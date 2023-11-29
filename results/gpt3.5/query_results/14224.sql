SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Sci-Fi%' 
AND tb.tconst NOT IN ('tt2527336', 'tt1731141') 
ORDER BY tr.averageRating DESC
LIMIT 10