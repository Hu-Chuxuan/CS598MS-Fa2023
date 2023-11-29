SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Horror%'
AND tb1.startYear > 2013
AND tb1.startYear < 2023
AND tb1.tconst NOT IN ('tt1457767', 'tt0081505', 'tt0070047', 'tt1204977', 'tt0087800', 'tt1922777', 'tt0083907', 'tt1288558')
ORDER BY tr.averageRating DESC
LIMIT 5