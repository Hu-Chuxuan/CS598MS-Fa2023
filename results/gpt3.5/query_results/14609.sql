SELECT primaryTitle, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear < 2019
AND genres LIKE '%Action%'
AND tconst NOT IN ('tt1825683', 'tt3501632') -- excluding movies already seen
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5