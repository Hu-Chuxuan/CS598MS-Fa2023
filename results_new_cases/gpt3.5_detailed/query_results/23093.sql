SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Horror%'
AND tb1.genres LIKE '%Mystery%'
AND tb1.primaryTitle != 'The Boxtrolls (2014)'
AND tr.averageRating >= 7
ORDER BY tr.averageRating DESC
LIMIT 5