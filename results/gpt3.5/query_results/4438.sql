SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear = 2017
AND tb.primaryTitle != 'The Shape of Water'
AND tb.primaryTitle NOT IN ('Jumanji', 'Coco')
ORDER BY tr.averageRating DESC
LIMIT 5