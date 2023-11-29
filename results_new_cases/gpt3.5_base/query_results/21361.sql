SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tb1.genres AS genre
FROM title_basics tb1
JOIN title_basics tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle = 'Lost'
AND tb2.startYear = 2004
AND tb1.titleType = 'movie'
AND tb1.genres LIKE '%Sci-Fi%'
AND tb1.primaryTitle != 'Lost'
LIMIT 5