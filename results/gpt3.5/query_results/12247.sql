SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS rating, tb1.genres AS genre
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear >= 2000
AND tb1.genres LIKE '%Romance%'
AND tr.numVotes > 1000
AND tb1.tconst NOT IN ('tt0100405', 'tt0159355')  -- excluding user preference history movies
ORDER BY tr.averageRating DESC
LIMIT 5