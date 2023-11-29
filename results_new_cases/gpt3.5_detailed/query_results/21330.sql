SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
INNER JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear >= 2000
AND tb1.genres LIKE '%Adventure%'
AND tb1.genres LIKE '%Drama%'
AND tb1.tconst NOT IN ('tt0167260', 'tt0280760')  -- excluding The Lord of the Rings: The Return of the King and John Q.
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5