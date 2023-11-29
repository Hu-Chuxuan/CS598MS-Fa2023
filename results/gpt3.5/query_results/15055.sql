SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_principals AS tp ON tb1.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE tb1.titleType = 'movie'
AND tr.averageRating > 7
AND tb1.startYear > 2010
AND tb1.genres LIKE '%Comedy%'
AND nb.primaryProfession LIKE '%actor%'
AND tb1.primaryTitle NOT IN ('Toy Story (1995)', 'Trolls  (2016)', 'Sing  (2016)', 'Toy Story 2 (1999)')
GROUP BY tb1.primaryTitle
ORDER BY tr.numVotes DESC
LIMIT 5