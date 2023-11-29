SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS rating
FROM title_basics AS tb1
JOIN title_basics AS tb2 ON tb1.genres = tb2.genres
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb2.primaryTitle = 'Forgetting Sarah Marshall'
AND tb1.titleType = 'movie'
AND tb1.startYear > 2008
AND tb1.tconst NOT IN ('tt0379725', 'tt3659388')
ORDER BY tr.averageRating DESC
LIMIT 5