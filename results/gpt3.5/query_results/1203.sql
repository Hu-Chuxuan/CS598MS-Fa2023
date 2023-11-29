SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS rating
FROM title_basics AS tb1
JOIN title_ratings AS tr
ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Mystery%' 
AND tb1.genres NOT LIKE '%Horror%' 
AND tb1.startYear > 1940 
AND tb1.startYear < 1960
AND tb1.primaryTitle NOT IN ('The Asphalt Jungle (1950)', 'Murder, My Sweet')
ORDER BY tr.averageRating DESC
LIMIT 5