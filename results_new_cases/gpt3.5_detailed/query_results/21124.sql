SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Action%'
AND tb1.startYear = 2018
AND tb1.primaryTitle != 'Black Panther'
ORDER BY tr.averageRating DESC
LIMIT 5