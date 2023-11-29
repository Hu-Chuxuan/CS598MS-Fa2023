SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_basics tb2 ON tb1.genres LIKE CONCAT('%', tb2.genres, '%')
WHERE tb2.primaryTitle = 'Game Night'
AND tb2.startYear = 2018
AND tb1.titleType = 'movie'
AND tb1.genres LIKE '%Comedy'
AND tb1.primaryTitle NOT IN ('Zootopia', 'The Incredibles', 'Wreck-It Ralph')
GROUP BY tb1.primaryTitle
ORDER BY COUNT(tb1.primaryTitle) DESC
LIMIT 5