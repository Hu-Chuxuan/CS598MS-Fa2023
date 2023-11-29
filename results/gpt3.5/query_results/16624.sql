SELECT primaryTitle, averageRating, numVotes
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle != 'Ender\'s Game'
AND startYear >= 2010
AND genres LIKE '%Action%'
AND averageRating > 7
ORDER BY numVotes DESC
LIMIT 5