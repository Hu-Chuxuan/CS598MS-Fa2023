SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear > 2012
AND tb1.genres LIKE '%Action%'
AND tb1.tconst NOT IN ('tt0371746', 'tt0848228')
ORDER BY tr.averageRating DESC
LIMIT 5