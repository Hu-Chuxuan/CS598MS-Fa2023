SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_crew tc ON tb1.tconst = tc.tconst
JOIN name_basics nb ON tc.directors LIKE CONCAT('%', nb.nconst, '%')
WHERE nb.primaryName = 'Tom Hanks'
AND tb1.titleType = 'movie'
AND tb1.startYear <= 2018
AND tb1.averageRating >= 8
AND tb1.tconst NOT IN ('tt0120815', 'tt0139654', 'tt4154756')
ORDER BY tb1.averageRating DESC
LIMIT 5