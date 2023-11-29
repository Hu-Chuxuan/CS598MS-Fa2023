SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS average_rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie' 
AND tb1.startYear <= 2021 
AND tb1.genres LIKE '%Action%' 
AND tb1.tconst NOT IN ('tt0120903', 'tt0364828', 'tt0468569', 'tt0083658', 'tt0191397')
ORDER BY tr.averageRating DESC
LIMIT 5