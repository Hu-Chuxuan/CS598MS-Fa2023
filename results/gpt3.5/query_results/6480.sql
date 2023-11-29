SELECT tb1.primaryTitle AS RecommendedMovie, tb1.startYear AS ReleaseYear, tr.averageRating AS AverageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Western%' 
AND tb1.startYear <= 1962 
AND tb1.titleType = 'movie'
AND tb1.tconst NOT IN 
    (SELECT DISTINCT tp.tconst
     FROM title_principals tp
     JOIN name_basics nb ON tp.nconst = nb.nconst
     WHERE nb.primaryName = 'Will Smith')
ORDER BY tr.averageRating DESC
LIMIT 5