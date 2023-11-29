SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_basics tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle = 'Seven'
AND tb1.titleType = 'movie'
AND tb1.startYear > 1995
AND tb1.primaryTitle NOT IN ('The Purge', 'Panic Room')
ORDER BY tb1.averageRating DESC
LIMIT 5