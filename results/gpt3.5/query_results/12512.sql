SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_principals AS tp ON tb1.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Comedy%'
AND (nb.primaryName LIKE '%Kevin James%' OR nb.primaryName LIKE '%Raini Rodriguez%')
AND tr.averageRating >= 6
AND tr.numVotes >= 1000
AND tb1.primaryTitle != 'Mall Cop'
GROUP BY tb1.tconst
ORDER BY RAND()
LIMIT 5