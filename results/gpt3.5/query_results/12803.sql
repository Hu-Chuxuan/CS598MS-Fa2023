SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.originalTitle = tb.primaryTitle
AND tb.isAdult = 0
AND tb.genres LIKE '%Drama%' AND tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2000
AND tb.startYear <= 2022
AND tb.genres LIKE '%French%'
AND tb.genres LIKE '%Canadian%'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10