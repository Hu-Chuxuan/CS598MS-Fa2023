SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS average_rating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear <= 1990
AND tb1.startYear >= 1980
AND tb1.tconst NOT IN ('tt0100549', 'tt0100404', 'tt0099864')
ORDER BY tr.averageRating DESC
LIMIT 5