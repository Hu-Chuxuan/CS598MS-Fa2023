SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_principals AS tp ON tb1.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE tb1.titleType = 'movie'
AND tr.averageRating >= 7.5
AND tb1.genres LIKE '%Sci-Fi%'
AND nb.primaryName LIKE '%Clint Eastwood%'
AND tb1.startYear >= 2000
AND tb1.tconst NOT IN ('tt0180052', 'tt0120631', 'tt0181865')
GROUP BY tb1.primaryTitle
ORDER BY tr.numVotes DESC
LIMIT 5