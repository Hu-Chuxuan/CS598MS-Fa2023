SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
INNER JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Fantasy%' 
AND tb1.startYear > 2016
AND tb1.primaryTitle NOT IN ('Fantastic Beasts and Where to Find Them', "Ender's Game")
ORDER BY tr.averageRating DESC
LIMIT 5