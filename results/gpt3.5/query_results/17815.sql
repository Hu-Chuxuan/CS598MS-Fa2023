SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tb2.averageRating AS rating
FROM title_basics AS tb1
JOIN title_ratings AS tb2 ON tb1.tconst = tb2.tconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Comedy%'
AND tb1.startYear <= 1994
AND tb1.startYear >= 1990
AND tb1.tconst NOT IN ('tt0118799', 'tt0454876', 'tt2278388')  -- excluding user's historical preferences
ORDER BY tb2.averageRating DESC, tb2.numVotes DESC
LIMIT 5