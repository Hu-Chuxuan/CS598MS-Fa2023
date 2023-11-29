SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_ratings AS tr1 ON tb1.tconst = tr1.tconst
JOIN title_principals AS tp1 ON tb1.tconst = tp1.tconst
JOIN name_basics AS nb1 ON tp1.nconst = nb1.nconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear > 2007
AND tb1.genres LIKE '%Comedy%'
AND tr1.averageRating >= 7.0
AND (nb1.knownForTitles LIKE '%tt0109686%' OR nb1.primaryName = 'Jim Carrey' OR nb1.primaryName = 'Jeff Daniels')
GROUP BY tb1.primaryTitle
ORDER BY COUNT(tb1.tconst) DESC
LIMIT 5