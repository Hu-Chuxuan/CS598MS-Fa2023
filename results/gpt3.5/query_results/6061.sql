SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr 
ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND (tb.genres LIKE '%Romance%' OR tb.genres LIKE '%Comedy%') 
AND tb.startYear > 1997 
AND tb.startYear < 2005 
AND tb.primaryTitle NOT IN ('Sweet Home Alabama', 'Just like Heaven', 'Fools Rush In')
ORDER BY tr.averageRating DESC
LIMIT 5