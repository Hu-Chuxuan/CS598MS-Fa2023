SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Comedy%' 
AND tb.startYear > 2001 
AND tb.startYear < 2010 
AND tb.primaryTitle != 'Super Troopers' 
ORDER BY tr.averageRating DESC 
LIMIT 5