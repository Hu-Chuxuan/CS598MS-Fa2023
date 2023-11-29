SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Comedy%'
AND tr.averageRating >= 7.5
AND tb1.primaryTitle != 'Superbad'
ORDER BY tr.numVotes DESC
LIMIT 5