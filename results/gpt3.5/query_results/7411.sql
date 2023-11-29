SELECT primaryTitle
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear = 1996
AND titleType = 'movie'
AND primaryTitle != 'A Time to Kill'
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5