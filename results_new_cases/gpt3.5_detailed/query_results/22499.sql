SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Animation%' 
AND tb.startYear IN (2017, 2016) 
AND tb.primaryTitle NOT IN ('Coco', 'Sing', 'Moana', 'Black Panther', 'Justice League', 'Batman') 
ORDER BY tr.averageRating DESC, tb.runtimeMinutes ASC
LIMIT 5