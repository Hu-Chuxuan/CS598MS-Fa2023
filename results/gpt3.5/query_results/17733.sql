SELECT primaryTitle, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Action%'
AND genres NOT LIKE '%Comic Book%'
AND primaryTitle NOT IN ('John Wick', 'The Foreigner')
AND startYear <= 2016
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5