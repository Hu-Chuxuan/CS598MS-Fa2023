SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear >= 2000
AND tb1.genres LIKE '%Action%'
AND tb1.primaryTitle NOT IN ('The Texas Chainsaw Massacre  (2003)', 'X-Men  (2000)', 'X-Men: The Last Stand (2006)', 'A Nightmare on Elm Street (1984)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5