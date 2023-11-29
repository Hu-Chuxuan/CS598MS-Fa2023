SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear = 2013
AND tb.titleType = 'movie'
AND tb.genres LIKE '%Animation%'
AND tb.primaryTitle NOT IN ('The Croods (2013)', 'Trolls  (2016)', 'Coco  (2017)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5