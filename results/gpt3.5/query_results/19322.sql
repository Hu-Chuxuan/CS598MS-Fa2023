SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_ratings AS tr1 ON tb1.tconst = tr1.tconst
WHERE tb1.genres LIKE '%Comedy%'
AND tb1.startYear >= 2000
AND tb1.primaryTitle NOT IN ('Zoolander (2001)', 'Coneheads  (1993)', 'Adventureland  (2009)')
ORDER BY tr1.averageRating DESC, tr1.numVotes DESC
LIMIT 5