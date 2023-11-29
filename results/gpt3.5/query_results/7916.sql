SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_principals AS tp ON tb1.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE tr.averageRating >= 7
AND tb1.startYear >= 2010
AND tb1.genres LIKE '%Animation%'
AND nb.primaryName = 'Dwayne Johnson'
AND tb1.tconst NOT IN ('tt0113497', 'tt0107554')
GROUP BY tb1.primaryTitle
ORDER BY COUNT(*) DESC
LIMIT 5