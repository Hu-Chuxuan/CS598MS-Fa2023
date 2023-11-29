SELECT tb1.primaryTitle AS recommended_movie
FROM title_ratings tr
JOIN title_basics tb1 ON tr.tconst = tb1.tconst
JOIN title_basics tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle = 'Happy Gilmore'
AND tb1.startYear >= 1990
AND tb1.titleType = 'movie'
AND tb1.averageRating > 7
AND tb1.numVotes > 500
ORDER BY tb1.averageRating DESC
LIMIT 5