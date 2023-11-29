SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Action%' 
AND tb.genres LIKE '%Adventure%' 
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 10