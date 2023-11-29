SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Romance%'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear <= 2022
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5