SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_basics AS tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle = 'Ant-Man  (2015)'
AND tb1.primaryTitle NOT IN ('Ant-Man  (2015)', 'Deadpool  (2016)')
ORDER BY tb1.averageRating DESC
LIMIT 5