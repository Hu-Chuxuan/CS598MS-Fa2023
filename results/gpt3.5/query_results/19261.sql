SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Comedy%'
AND averageRating > 6
AND (primaryTitle != 'Neighbors' OR primaryTitle != 'Baywatch' OR primaryTitle != '21 Jump Street')
ORDER BY numVotes DESC
LIMIT 5