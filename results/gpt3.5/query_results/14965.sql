SELECT primaryTitle, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND primaryTitle != 'Black Panther'
AND averageRating > 7
AND numVotes > 500
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5