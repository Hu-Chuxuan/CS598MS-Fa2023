SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tr.numVotes > 1000
AND tb.primaryTitle != 'Superbad'
ORDER BY tr.averageRating DESC
LIMIT 10