SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_basics AS tb2 ON tb1.genres LIKE CONCAT('%', tb2.genres, '%')
WHERE tb2.primaryTitle IN ('Black Hawk Down  (2002)', 'MASH  (1970)', 'Full Metal Jacket (1987)')
AND tb1.titleType = 'movie'
AND tb1.genres LIKE '%Action%'
AND tb1.genres LIKE '%War%'
AND tb1.primaryTitle NOT IN ('Black Hawk Down  (2002)', 'MASH  (1970)', 'Full Metal Jacket (1987)')
GROUP BY tb1.primaryTitle
ORDER BY COUNT(tb1.primaryTitle) DESC
LIMIT 5