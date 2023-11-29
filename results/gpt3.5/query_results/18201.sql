SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Family%'
AND tb1.startYear > 2017
AND tb1.averageRating >= 7.5
AND tb1.tconst NOT IN ('tt4520988', 'tt3521164', 'tt7094040', 'tt0317219')
ORDER BY tr.numVotes DESC
LIMIT 5