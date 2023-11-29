SELECT primaryTitle, startYear, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.genres LIKE '%Comedy%' 
AND title_basics.primaryTitle LIKE '%Madea%'
AND title_basics.startYear >= 2000
AND title_ratings.numVotes > 1000
ORDER BY averageRating DESC
LIMIT 5