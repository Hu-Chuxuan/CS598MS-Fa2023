SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
JOIN title_principals tp ON tb.tconst = tp.tconst 
JOIN name_basics nb ON tp.nconst = nb.nconst 
WHERE tb.genres LIKE '%Horror%' 
AND tb.startYear >= 2000 
AND tb.startYear <= 2010 
AND nb.primaryName = 'Timothy Balme' 
AND tb.primaryTitle != 'Behind the Mask' 
AND tr.averageRating >= 7 
GROUP BY tb.primaryTitle 
ORDER BY tr.averageRating DESC
LIMIT 5