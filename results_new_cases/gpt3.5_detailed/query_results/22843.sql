SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%War%'
AND tb.tconst NOT IN ('tt0369610', 'tt0107290', 'tt0343818', 'tt0120738', 'tt0212720')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10