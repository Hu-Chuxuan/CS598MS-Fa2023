SELECT tb1.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_crew AS tc ON tb1.tconst = tc.tconst
JOIN name_basics AS nb ON tc.directors LIKE CONCAT('%', nb.nconst, '%')
WHERE tb1.titleType = 'movie'
AND tb1.startYear >= 1990
AND tb1.genres LIKE '%Crime%'
AND nb.primaryName = 'Joel Coen'
AND tb1.primaryTitle NOT IN ('Fargo (1996)', 'Barton Fink (1991)', 'The Godfather', 'The Big Lebowski')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5