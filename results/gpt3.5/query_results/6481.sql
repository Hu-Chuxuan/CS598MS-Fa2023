SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS average_rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Animation%' 
AND tb1.startYear > 2015
AND tb1.primaryTitle NOT IN ('The Lion King', 'Cinderella')
ORDER BY tr.averageRating DESC
LIMIT 5