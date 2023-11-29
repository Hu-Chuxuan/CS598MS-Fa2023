SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Animation%' AND primaryTitle != 'Toy Story That Time Forgot'
ORDER BY numVotes DESC
LIMIT 5