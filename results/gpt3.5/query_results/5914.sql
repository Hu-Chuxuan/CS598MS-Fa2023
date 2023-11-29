SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tb1.genres AS recommended_genres, tr.averageRating AS average_rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Musical%'
AND tb1.genres NOT LIKE '%Comedy%'
AND tb1.startYear >= 2017
ORDER BY tr.averageRating DESC
LIMIT 5