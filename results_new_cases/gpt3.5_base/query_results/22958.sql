SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS year
FROM title_basics AS tb1
JOIN title_basics AS tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle IN ('Dunkirk', 'Saving Private Ryan')
AND tb1.titleType = 'movie'
AND tb1.primaryTitle NOT IN ('The Shining', 'The Birds', 'The Hills Have Eyes', 'Frozen', 'The Witch')
AND tb1.startYear > 2010
ORDER BY tb1.averageRating DESC, tb1.numVotes DESC
LIMIT 5