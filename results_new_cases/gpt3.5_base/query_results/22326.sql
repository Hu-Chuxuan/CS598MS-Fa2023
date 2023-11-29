SELECT tb2.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_basics tb2 ON tb1.genres = tb2.genres
WHERE tb1.primaryTitle = 'Fast 8' OR tb1.primaryTitle = 'The Terminator (1984)'
AND tb2.titleType = 'movie'
AND tb2.averageRating > 7
AND tb2.numVotes > 1000
AND tb2.primaryTitle NOT IN ('Making a Murderer', 'The Godfather (1972)')
ORDER BY tb2.averageRating DESC, tb2.numVotes DESC
LIMIT 5