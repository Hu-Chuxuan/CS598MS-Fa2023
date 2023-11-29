SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_basics AS tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle IN ('It (1990)', 'The Exorcist (1973)')
AND tb1.titleType = 'movie'
AND tb1.primaryTitle NOT IN ('It (1990)', 'The Exorcist (1973)')
AND tb1.startYear >= 1980
ORDER BY tb1.averageRating DESC
LIMIT 5