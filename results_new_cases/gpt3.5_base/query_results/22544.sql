SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tb2.averageRating AS rating
FROM title_basics AS tb1
JOIN title_ratings AS tb2 ON tb1.tconst = tb2.tconst
WHERE tb1.titleType = 'movie'
AND tb1.isAdult = 0
AND tb1.genres LIKE '%Animation%'
AND tb1.startYear > 2010
AND tb2.averageRating >= 7
AND tb1.primaryTitle NOT IN ('Up (2009)', 'Finding Dory (2016)', 'The Incredibles (2004)', 'Coco (2017)')
ORDER BY tb2.averageRating DESC
LIMIT 5