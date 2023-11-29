SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear, tr.averageRating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Action%'
AND tb1.primaryTitle NOT IN ('The Incredibles (2004)', 'Finding Dory (2016)', 'Coco  (2017)')
ORDER BY tr.averageRating DESC
LIMIT 5