SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND tb.startYear >= YEAR(CURDATE()) 
AND tr.averageRating >= 7 
AND tb.tconst NOT IN ('tt2527336') 
ORDER BY tr.averageRating DESC, tb.startYear DESC 
LIMIT 10