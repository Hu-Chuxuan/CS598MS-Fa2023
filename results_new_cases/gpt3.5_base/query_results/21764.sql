SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Mystery%' 
AND tb.startYear >= 2010 
AND tb.primaryTitle != 'Sherlock Holmes'  (2010) 
ORDER BY tr.averageRating DESC
LIMIT 5