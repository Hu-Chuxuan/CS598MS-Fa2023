SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.startYear >= 2010
AND tb1.genres LIKE '%Horror%'
AND tb1.tconst NOT IN ('tt0099864', 'tt0117571', 'tt0387564', 'tt0099864')
ORDER BY tr.averageRating DESC
LIMIT 5