SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 2022
AND tb.genres LIKE '%Animation%'
AND tb.primaryTitle != 'Up  (2009)' 
AND tb.primaryTitle != 'Monsters, Inc. (2001)' 
AND tb.primaryTitle != 'Zootopia' 
AND tb.primaryTitle != 'Sing  (2016)' 
AND tb.primaryTitle != 'The Boss Baby (2017)'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5