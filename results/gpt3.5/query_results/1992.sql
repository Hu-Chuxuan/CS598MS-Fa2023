SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_basics AS tb2 ON tb1.genres = tb2.genres
LEFT JOIN title_principals AS tp ON tp.tconst = tb1.tconst
LEFT JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE (tb2.primaryTitle = 'Abduction' AND tb2.startYear = 2011)
   OR (tb2.primaryTitle = 'Speed' AND tb2.startYear = 1994 AND nb.primaryName = 'Keanu Reeves')
   OR tb1.primaryTitle IN ('The Taking of Pelham 123', 'Mad Max: Fury Road', 'Die Hard', 'Speed', 'S.W.A.T.', 'Mad Max', 'Abduction')
GROUP BY recommended_movie
HAVING COUNT(DISTINCT tb1.genres) >= 2
ORDER BY COUNT(DISTINCT tb1.genres) DESC, tb1.averageRating DESC
LIMIT 10