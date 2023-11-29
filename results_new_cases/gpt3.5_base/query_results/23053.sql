SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%War%' 
AND tb.primaryTitle NOT IN ('Black Hawk Down (2002)', 'Fight Club (1999)') 
ORDER BY tr.averageRating DESC 
LIMIT 5