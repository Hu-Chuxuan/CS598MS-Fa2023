SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tb1.genres
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Comedy%'
AND tb1.startYear >= 2005
AND tb1.tconst NOT IN ('tt0458352', 'tt1133991', 'tt0389860')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5