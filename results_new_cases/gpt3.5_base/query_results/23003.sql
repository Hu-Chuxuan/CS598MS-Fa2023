SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_basics tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle = 'Up Denali 3D'
AND tb2.titleType = tb1.titleType
AND tb2.startYear = tb1.startYear
AND tb1.tconst <> tb2.tconst
AND tb1.titleType = 'movie'
AND tb1.genres LIKE '%based on a true story%'
AND tb1.startYear <= 2003
ORDER BY tb1.averageRating DESC
LIMIT 5