SELECT * FROM title_basics t
JOIN title_crew tc ON t.tconst = tc.tconst
JOIN title_principals tp ON tc.tconst = tp.tconst
WHERE t.titleType ='movie' AND t.startYear >= 2000 AND t.endYear <= 2017
AND tp.category = 'animator' OR tp.category = 'director'
AND t.primaryTitle LIKE '%animation%'
AND t.genres LIKE '%adventure%'
AND t.genres LIKE '%comedy%'
AND t.genres LIKE '%family%'
AND t.genres LIKE '%fantasy%'
AND t.runtimeMinutes > 60
AND t.numVotes > 1000

ORDER BY t.averageRating DESC

This SQL query will SELECT all the movies that are animated, have a primary title containing the word "animation", and have genres that include adventure, comedy, family, and fantasy. The query will also SELECT movies that have a runtime of more than 60 minutes and have received more than 1000 votes. The results will be ordered by the average rating in descending order