SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND tb.startYear <= 2013 
AND tb.primaryTitle NOT IN ('Message in a Bottle', 'The Notebook', 'Dear John') 
AND tb.genres LIKE '%Romance%' 
ORDER BY tr.averageRating DESC, tb.startYear DESC 
LIMIT 5