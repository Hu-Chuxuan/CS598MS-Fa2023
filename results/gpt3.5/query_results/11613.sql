SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Horror%'
AND startYear > 2010
AND averageRating > 6.5
AND primaryTitle != 'Wonder Woman (2017)'
ORDER BY numVotes DESC
LIMIT 5