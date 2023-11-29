SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.isAdult = 0 
AND tb.startYear > 2000 
AND (tb.genres LIKE '%Family%' OR tb.genres LIKE '%Animation%') 
AND tb.primaryTitle NOT IN ('Up', 'Finding Dory', 'The Incredibles', 'Coco')
ORDER BY tr.averageRating DESC
LIMIT 10