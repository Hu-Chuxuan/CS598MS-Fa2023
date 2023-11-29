SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS rating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Action%' OR tb1.genres LIKE '%Adventure%'
AND tb1.startYear <= 2018
AND tb1.primaryTitle NOT IN ('Pixels', 'Ready Player One', 'Beauty and the Beast')
ORDER BY tr.averageRating DESC
LIMIT 5