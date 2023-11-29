SELECT tb.primaryTitle, tr.averageRating, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Animation%'
AND tr.numVotes > 1000
AND tb.primaryTitle != 'Jumanji  (2017)'
AND tb.primaryTitle != 'Coco  (2017)'
ORDER BY tr.averageRating DESC
LIMIT 5